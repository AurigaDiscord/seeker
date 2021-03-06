defmodule Seeker.Mixfile do
  use Mix.Project

  def project do
    [
      app: :seeker,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {Seeker, []},
      applications: [:confex, :poison, :timex, :amqp],
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:confex, "~> 3.3.0"},
      {:poison, "~> 3.1"},
      {:timex, "~> 3.1"},
      {:amqp, "~> 1.0.3"}
    ]
  end
end
