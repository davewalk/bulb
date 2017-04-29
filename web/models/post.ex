defmodule Bulb.Post do
  use Bulb.Web, :model

  schema "posts" do
    field :text, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:id, :text])
    |> validate_required([:id, :text])
  end
end
