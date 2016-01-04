defmodule Mix.Tasks.HexSearcher.Find do
  use Mix.Task

  @moduledoc """
  Search for packages in hex.pm

  ## Examples

      mix hex_searcher.find cowboy

  """

  def run(args) do
    args |> parse_args |> process
  end

  def process([]) do
    IO.puts "No arguments given"
  end
  
  def process(:help) do
    IO.puts @moduledoc
  end

  def process(search_terms) do
    HTTPotion.start
    HexSearcher.main(search_terms)
  end

  defp parse_args(args) do
    cmd_opts = OptionParser.parse(args)

    case cmd_opts do
      {_opts, search_terms, []} -> search_terms
      _ -> :help
    end
  end

end
