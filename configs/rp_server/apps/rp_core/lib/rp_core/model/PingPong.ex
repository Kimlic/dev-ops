defmodule RpCore.PingPong do
  use RpCore.Model
  
  @primary_key {:id, Ecto.UUID, autogenerate: true}
  @foreign_key_type Ecto.UUID
  @required_params ~w()a
  @optional_params ~w()a

  schema "ping_pong" do
    field :ping, :string

    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, @required_params ++ @optional_params)
  end
end