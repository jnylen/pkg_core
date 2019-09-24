defmodule PkgCore.Logger do
  @doc """
  `debug/1` outputs in a shell a green text with the following string.
  """
  def debug(_, string), do: Mix.shell().info([:green, "* ", :reset, string])

  @doc """
  `error/1` raises an error in case of an error.
  """
  def error(app, string), do: Mix.raise("[#{app}] #{string}")
end
