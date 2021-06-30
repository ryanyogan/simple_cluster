defmodule SimpleCluster.MixProject do
  use Mix.Project

  def project do
    [
      app: :simple_cluster,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {SimpleCluster.Application, []}
    ]
  end

  defp deps do
    [
      {:libcluster, "~> 3.3"}
    ]
  end
end
