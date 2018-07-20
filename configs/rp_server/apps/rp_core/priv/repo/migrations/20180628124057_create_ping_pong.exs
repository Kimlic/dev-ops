defmodule RpCore.Repo.Migrations.CreatePingPong do
  use Ecto.Migration

  def change do
    create table :ping_pong, primary_key: false, prefix: "rp_core" do
      add :id, :uuid, primary_key: true
      add :ping, :citext, null: false, default: "pong"

      timestamps()
    end
  end
end
