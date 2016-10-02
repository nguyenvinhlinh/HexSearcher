defmodule HexSearcher do
  @hex_url "https://hex.pm/packages?search="
  @website_url "https://hex.pm"

  def main([search_term]) do
    search_term
    |> fetch_xml
    |> crawl_package
    |> FormatTable.print
  end
  
  def main([search_term, page]) do
    fetch_xml(search_term, page)
    |> crawl_package
    |> FormatTable.print
  end

  # fetch_xml/1 : fetch the html body, the source if from hex.pm website
  # params:
  # - search_term: the name of package
  # return:
  # - {:ok, body: body}
  # - {:error, status: status_code}
  def fetch_xml(search_term) do
    try do
      response = HTTPotion.get(@hex_url <> search_term)
      if response.status_code == 200 do
        {:ok, body: response.body}
      else
        {:error, status: response.status_code}
      end
    rescue
      e in HTTPotion.HTTPError  ->
        IO.puts "Internet Connection Error: #{e.message}"
      exit(1)
    end
  end

  def fetch_xml(search_term, page) do
    try do
      response = HTTPotion.get(@hex_url<>search_term<>"&page=#{page}")
      if response.status_code == 200 do
        {:ok, body: response.body}
      else
        {:error, status: response.status_code}
      end
    rescue
      e in HTTPotion.HTTPError  ->
        IO.puts "Internet Connection Error: #{e.message}"
      exit(1)
    end
  end
  
  # crawl_package/1 : filter information from xml.
  # params:
  # - {:ok, body: xml}: xml is the body of webpage
  # return:
  # - [%HexPackage{}, %HexPackage{} ]
  def crawl_package({:ok, body: html}) do
    data = Floki.find(html, "div.package-list ul li")
    packages = Enum.map data,  fn(element) ->
      meta = elem(element, 2)
      [meta_download, meta_href, meta_version , meta_description] = meta
      package_name = get_package_name(meta_href)
      href = get_href(meta_href)
      version = get_version(meta_version)
      description = get_description(meta_description)
      download_counter = get_download_counter(meta_download)
      package = %HexPackage{name: package_name, description: description,
                  version: version, download: download_counter, url: href}
    end
    packages
  end 
  
  defp get_package_name( {"a", [_], [package_name]}) do
    package_name
    |> String.strip
  end

  defp get_href({"a", [{"href", href}], [_package_name]})do
    "#{@website_url}#{href}"
  end

  defp get_description({"p", [], [description]}) do
    description
    |> String.strip
    |> String.replace "\n", " "
  end

  defp get_version({"span", [{"class", "version"}], [version]}) do
    version
  end

  defp get_download_counter({"div", [{"class", "downloads-info"}],
                             [{"span", [{"class", "download-count"}], [download_counter]}, {"br", [], []}, _]}) do
    download_counter
    |> String.strip
    |> String.replace " ", ","
  end  
end
