defmodule Bulb.PointTest do
  use Bulb.ModelCase

  alias Bulb.Point

  @valid_attrs %{key: "some content", tags: %{}, value: "120.5"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Point.changeset(%Point{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Point.changeset(%Point{}, @invalid_attrs)
    refute changeset.valid?
  end
end
