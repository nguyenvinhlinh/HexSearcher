defmodule HexSearcherTest do
  use ExUnit.Case
  @packages  [%HexPackage{description: "Fancy HTTP client for Elixir, based on ibrowse.", download: "162,301",
                          name: "httpotion", url: "https://hex.pmhttps://hex.pm/packages/httpotion", version: "3.0.2"},
              %HexPackage{description: "milkpotion is an api wrapper for Remember the Milk", download: "130",
                          name: "milkpotion", url: "https://hex.pmhttps://hex.pm/packages/milkpotion", version: "0.0.4"},
              %HexPackage{description: "Substitute placeholders in ODT's with custom information", download: "79",
                          name: "odt_potion", url: "https://hex.pmhttps://hex.pm/packages/odt_potion", version: "0.0.1"}]

  test "fetch_xml" do
    response = HexSearcher.fetch_xml("cow")
    assert elem(response, 0) == :ok
  end

  test "crawl_package" do
    {:ok, html} = File.read("./test/files/index.html")
    data = HexSearcher.crawl_package({:ok, body: html})
    expected_data = @packages
    assert data == expected_data
  end

  def packages do
    @packages
  end
end
