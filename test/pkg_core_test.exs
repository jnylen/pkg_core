defmodule PkgCoreTest do
  use ExUnit.Case
  doctest PkgCore

  test "greets the world" do
    assert PkgCore.hello() == :world
  end
end
