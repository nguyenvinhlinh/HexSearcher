defmodule HexSearcher do
  @hex_url "https://hex.pm/packages?search="
  @website_url "https://hex.pm"

  def main([search_term]) do
    search_term
    |> fetch_xml
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
      response = HTTPotion.get (@hex_url <> search_term)
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
  def crawl_package({:ok, body: xml}) do
    data = Floki.find(xml, "tbody tr")
    packages = Enum.reduce data, [], fn(element, acc) ->
      tds = elem(element, 2)
      [td1,td2,td3,td4] = tds
      package_name = get_package_name td1
      href = get_href td1
      version = get_version td3
      description = get_description td2
      download_counter = get_download_counter td4
      package = %HexPackage{name: package_name, description: description,
                  version: version, download: download_counter, url: href}
      Enum.into [package], acc
    end
    packages
  end 
  
  defp get_package_name({"td", _, [{"a", _,[_, package_name]}]}) do
    package_name
    |> String.strip
  end

  defp get_href({"td", _, [{"a", [{"href", href}], _}]})do
    "#{@website_url}#{href}"
  end

  defp get_description({"td", _, [description]}) do
    description
    |> String.strip
    |> String.replace "\n", " "
  end

  defp get_version({"td", _, [{"span", _, [version]}]}) do
    version
  end

  defp get_download_counter({"td", _, [{"span", _, [download_counter]}]}) do
    download_counter
    |> String.strip
    |> String.replace " ", ","
  end
  
end
