defmodule Exor.MixProject do
  use Mix.Project

  def project do
    [
      app: :exor,
      version: "0.0.0",
      elixir: "~> 1.18",
      description: "Another mathematical tooling library for cryptography and artificial intelligence.",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      name: "Exor",
      source_url: "https://github.com/sfera-lab/exor",
      homepage_url: "https://github.com/sfera-lab/exor",
      docs: docs()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.40", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      files: ~w(lib .formatter.exs mix.exs README* CHANGELOG* LICENSE* assets),
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/sfera-lab/exor",
        "Changelog" => "https://github.com/sfera-lab/exor/blob/main/CHANGELOG.md"
      }
    ]
  end

  defp docs do
    [
      main: "Exor",
      source_url: "https://github.com/sfera-lab/exor",
      extras: ["README.md", "CHANGELOG.md"]
    ]
  end
end
