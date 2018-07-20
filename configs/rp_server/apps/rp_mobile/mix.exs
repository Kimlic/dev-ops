defmodule RpMobile.Mixfile do
  use Mix.Project

  def project do
    [
      app: :rp_mobile,
      version: "1.0.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.6",
      elixirc_paths: elixirc_paths(Mix.env),
      compilers: [:phoenix, :gettext] ++ Mix.compilers,
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      mod: {RpMobile.Application, []},
      env: [port: 4000],
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib"]

  defp deps do
    [
      {:phoenix, github: "Kimlic/phoenix", override: true},
      {:plug, github: "Kimlic/plug", override: true},
      {:gettext, "~> 0.11"},
      {:cowboy, "~> 2.4", [github: "Kimlic/cowboy", override: true, manager: :rebar3]},
      {:jason, "~> 1.0"},
      {:plug_logger_json, "~> 0.6"},
      {:conform, github: "Kimlic/conform"},

      {:rp_core, in_umbrella: true}
    ]
  end
end
