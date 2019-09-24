defmodule PkgCore.Utils.Logger do
  @doc """
  `debug/1` outputs in a shell a green text with the following string.
  """
  def debug(string), do: Mix.shell().info([:green, "* [deb] ", :reset, string])

  @doc """
  `error/1` raises an error in case of an error.
  """
  def error(string), do: Mix.raise(string)
end
