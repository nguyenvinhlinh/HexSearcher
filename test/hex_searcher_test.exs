defmodule HexSearcherTest do
  use ExUnit.Case
  @packages  [%HexPackage{description: "Small, fast, modular HTTP server written in Erlang.",
                          download: "602,410", name: "cowboy", url: "https://hex.pm/packages/cowboy",
                          version: "1.0.4"},
              %HexPackage{description: "Support library for manipulating Web protocols.",
                          download: "596,980", name: "cowlib", url: "https://hex.pm/packages/cowlib",
                          version: "1.3.0"},
              %HexPackage{description: "Erlang/Elixir Cloud Framework cowboy HTTP/HTTPS Service",
                          download: "125", name: "cloudi_service_http_cowboy",
                          url: "https://hex.pm/packages/cloudi_service_http_cowboy", version: "1.5.1"},
              %HexPackage{description: "A cow-friend who will speak your mind",
                          download: "74", name: "cowsay", url: "https://hex.pm/packages/cowsay",
                          version: "0.0.1"},
              %HexPackage{description: "ButlerCowsay plugin for Butler SlackBot",
                          download: "23", name: "butler_cowsay",
                          url: "https://hex.pm/packages/butler_cowsay", version: "0.2.1"},
              %HexPackage{description: "Small, fast, modular HTTP server written in Elixir.",
                          download: "3", name: "cowgirl", url: "https://hex.pm/packages/cowgirl",
                          version: "0.0.1"}]

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
