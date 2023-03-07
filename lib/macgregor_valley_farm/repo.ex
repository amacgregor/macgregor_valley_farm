defmodule MacgregorValleyFarm.Repo do
  use Ecto.Repo,
    otp_app: :macgregor_valley_farm,
    adapter: Ecto.Adapters.Postgres
end
