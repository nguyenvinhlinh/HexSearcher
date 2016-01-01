defmodule FormatTable do
  @header ["Package Name", "Description", "Version", "Link", "Download Counter"]
  @title "Hex Searcher"
  def print([]) do
    IO.puts "There is no results found."
  end
  
  def print(packages) do
    to_list = fn(p) ->
      [p.name, p.description, p.version, p.url, p.download ]
    end
    
    packages
    |> Enum.map(to_list)
    |> TableRex.quick_render!(@header, @title)
    |> IO.puts
  end

  
end
