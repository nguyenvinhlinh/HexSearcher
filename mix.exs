defmodule HexSearcher.Mixfile do
  use Mix.Project

  def project do
    [app: :hex_searcher,
     version: "0.3.0",
     elixir: "~> 1.0",
     description: description,
     package: package,
     escript: escript_config,
     deps: deps]
  end
  
  def application do
    [applications: [:logger, :httpotion, :table_rex]]
  end

  defp deps do
    [
      {:ibrowse, github: "cmullaparthi/ibrowse", tag: "v4.1.2"},
      {:httpotion, "~> 2.1.0"},
      {:floki, "~> 0.7.1"},
      {:table_rex, "~> 0.4.0"}
    ]
  end
  
  defp escript_config do
    [main_module: HexSearcher]
  end

  defp description do
  """
  Search hex package from terminal
  """
  end

  defp package do
    maintainers: ["Nguyen Vinh Linh"],
    licenses: ["MIT"],
    links: %{"Github" => "https://github.com/nguyenvinhlinh/HexSearcher"}
  end
end
