defmodule Phdemo.Repo do
  use Ecto.Repo,
    otp_app: :phdemo,
    adapter: Ecto.Adapters.Postgres
end
