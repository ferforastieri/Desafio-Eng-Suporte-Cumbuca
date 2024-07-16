defmodule DesafioCliCumbuca.MixProject do
  use Mix.Project

  def project do
    [
      app: :desafio_cli_cumbuca,
      version: "0.1.0",
      elixir: "~> 1.16",
      start_permanent: Mix.env() == :prod,
      escript: escript_config(),
      deps: deps(),
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test
      ]
    ]
  end

  defp escript_config do
    [
      main_module: DesafioCliCumbuca
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:excoveralls, "~> 0.14", only: :test}
    ]
  end
end


