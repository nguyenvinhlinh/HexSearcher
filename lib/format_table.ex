defmodule FormatTable do
  @header ["Package Name", "Description", "Version", "Link", "Download Counter"]
  @title "Hex Searcher"
  @cell_width 50
  def print([]) do
    IO.puts "There is no results found."
  end
  
  def print(packages) do
    to_rows_of_package = fn(ele,acc) ->
      rows = FormatTable.devide_from_one_package_row_to_many_row(ele)
      acc ++ rows ++ [["", "", "", "", ""]]
    end
    packages
    |> Enum.reduce([],to_rows_of_package)
    |> TableRex.quick_render!(@header, @title)
    |> IO.puts
  end
  
  def devide_from_one_package_row_to_many_row(%HexPackage{name: name,
                                                          description: description,
                                                          version: version,
                                                          download: download,
                                                          url: url}) do
    des_line = StringBeautify.beautify(description, @cell_width)
    number_of_line = Enum.count(des_line)
    to_list = fn (ele, acc) ->
      acc ++  [["", ele, "", "", ""]]
    end
    [_head | tail] = des_line
    Enum.reduce(tail,[[name, List.first(des_line), version, url, download]] ,to_list)
  end
end
