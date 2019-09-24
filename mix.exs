defmodule PkgCore.MixProject do
  use Mix.Project

  @name :pkg_core
  @version "0.1.1"
  @description """
  The core functions for all of the pkg_* libraries.
  """
  @deps []
  @hex_package [
    name: @name,
    files: ["lib", "mix.exs", "README*", "LICENSE*"],
    maintainers: ["Joakim Nylen <hexpm@joakim.nylen.nu>"],
    licenses: ["MIT"],
    links: %{
      "GitLab" => "https://gitlab.com/jnylen/pkg_core",
      "Docs" => "https://hexdocs.pm/pkg_core/"
    }
  ]

  def project do
    [
      app: @name,
      version: @version,
      elixir: ">= 1.9.0",
      start_permanent: Mix.env() == :prod,
      deps: @deps,
      package: @hex_package,
      description: @description
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end
end
