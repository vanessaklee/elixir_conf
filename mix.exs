defmodule ElixirConf.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixir_conf,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:axon, "~> 0.2.0"},
      {:nx, "~> 0.3.0", override: true},
      {:explorer, "~> 0.2.0"},
      {:kino, "~> 0.6.2"},
      {:ex_todo, "~> 0.1.0"},
      # {:exla, "~> 0.2.2"}
    ]
  end
end
