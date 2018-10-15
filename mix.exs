defmodule StrongMap.MixProject do
  use Mix.Project

  def project do
    [
      app: :strong_map,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      name: "StrongMap",
      source_url: "https://github.com/pierce-h/strong_map"
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
    ]
  end

  defp description() do
    "Converts a map with stringified keys to atoms and filters specified keys."
  end

  defp package() do
    [
      maintainers: ["Pierce Harmon"],
      # This option is only needed when you don't want to use the OTP application name
      name: "StrongMap",
      # These are the default files included in the package
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/pierce-h/strong_map"}
    ]
  end
end
