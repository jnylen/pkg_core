defmodule PkgCore.TemplateFinder do
  @moduledoc """
  This module decides whether to use a custom template or to use the default.
  """

  def retrieve(pathname, app) do
    path = user_provided_path(pathname, app)

    case File.exists?(path) do
      true ->
        path

      false ->
        default_path(pathname, app)
    end
  end

  defp user_provided_path(pathname, app) do
    [
      PkgCore.Config.rel_dest_path(),
      app,
      "templates",
      pathname
    ]
    |> List.flatten()
    |> Path.join()
  end

  defp default_path(pathname, app) do
    [
      PkgCore.Config.root(app),
      "templates",
      pathname
    ]
    |> List.flatten()
    |> Path.join()
  end
end
