defmodule Hellow.Repo do
  use Ecto.Repo,
    otp_app: :hellow,
    adapter: Ecto.Adapters.Postgres
end
