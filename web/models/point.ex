defmodule Bulb.Point do
  use Bulb.Web, :model

  schema "points" do
    field :key, :string
    field :value, :float
    field :tags, :map

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:key, :value, :tags])
    |> validate_required([:key, :value, :tags])
  end
end
