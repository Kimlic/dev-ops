defmodule RpCore.MixProject do
  use Mix.Project

  def project do
    [
      app: :rp_core,
      version: "1.0.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases()
    ]
  end

  def application do
    [
      extra_applications: [:logger, :runtime_tools],
      mod: {RpCore.Application, []}
    ]
  end

  defp deps do
    [
      {:plug, github: "Kimlic/plug", override: true},
      {:ecto, "~> 2.2"},
      {:postgrex, "~> 0.13"},
      {:timex, "~> 3.3"},
      {:timex_ecto, "~> 3.3"},
      {:plug_logger_json, "~> 0.6"},
      {:conform, github: "Kimlic/conform"},
      {:task_bunny, "~> 0.3"},
      {:ethereumex, "~> 0.3"},
      {:keccakf1600, "~> 2.0", hex: :keccakf1600_orig}
    ]
  end

  defp aliases do
    [
      "ecto.setup": ["ecto.create", "ecto.migrate", "ecto.seed"],
      "ecto.reset": ["ecto.drop", "ecto.setup"],
      "test": ["ecto.create --quiet", "ecto.migrate", "test"]
    ]
  end
end
