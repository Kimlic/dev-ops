defmodule RpServer.MixProject do
  use Mix.Project

  def project do
    [
      name: "rp_server",
      apps_path: "apps",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases(),
      test_coverage: [tool: ExCoveralls]
    ]
  end

  defp deps do
    [
      {:distillery, "~> 1.5", runtime: false},
      {:excoveralls, "~> 0.9", only: [:dev, :test]},
      {:dialyxir, "~> 0.5", only: [:dev], runtime: false},
      {:credo, "~> 0.9", only: [:dev, :test], runtime: false}
    ]
  end

  defp aliases do
    ["ecto.setup": ["ecto.drop", "ecto.create", "ecto.migrate", "ecto.seed"],
    "ecto.reset": ["ecto.drop", "ecto.setup"],
    "ecto.seed": ["run apps/rp_core/priv/repo/seeds.exs"],
    "test": ["ecto.create --quiet", "ecto.migrate", "test"]]
  end
end