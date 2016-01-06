defmodule FormatTableTest do
  use ExUnit.Case
  @packages  [%HexPackage{description: "Small, fast, modular HTTP server written in Erlang.",
                          download: "602,410", name: "cowboy", url: "https://hex.pm/packages/cowboy",
                          version: "1.0.4"},
              %HexPackage{description: "Support library for manipulating Web protocols.",
                          download: "596,980", name: "cowlib", url: "https://hex.pm/packages/cowlib",
                          version: "1.3.0"},
              %HexPackage{description: "Erlang/Elixir Cloud Framework cowboy HTTP/HTTPS Service. From this line, this will be very long and long enough to test. Well, I dont know if it is long enough right now, But I still have to write this bunch of code. It's 1.03 am. I stop here",
                          download: "125", name: "cloudi_service_http_cowboy",
                          url: "https://hex.pm/packages/cloudi_service_http_cowboy", version: "1.5.1"}]
  
  test "devide_from_one_row_many_row" do
    result = FormatTable.devide_from_one_package_row_to_many_row(List.last(@packages))
    expected = [["cloudi_service_http_cowboy", "Erlang/Elixir Cloud Framework cowboy HTTP/HTTPS", "1.5.1", "https://hex.pm/packages/cloudi_service_http_cowboy", "125"],
                ["", "Service. From this line, this will be very long", "", "", ""], ["", "and long enough to test. Well, I dont know if it", "", "", ""],
                ["", "is long enough right now, But I still have to", "", "", ""], ["", "write this bunch of code. It's 1.03 am. I stop", "", "", ""],
                ["", "here", "", "", ""]]
    assert expected == result
  end
end
