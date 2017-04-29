defmodule Bulb.Repo.Migrations.CreatePost do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :text, :string

      timestamps()
    end

  end
end
