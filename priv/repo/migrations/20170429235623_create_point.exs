defmodule Bulb.Repo.Migrations.CreatePoint do
  use Ecto.Migration

  def change do
    create table(:points) do
      add :key, :string
      add :value, :float
      add :tags, :map

      timestamps()
    end

  end
end
