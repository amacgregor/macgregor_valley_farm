defmodule MacgregorValleyFarm.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      MacgregorValleyFarmWeb.Telemetry,
      # Start the Ecto repository
      MacgregorValleyFarm.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: MacgregorValleyFarm.PubSub},
      # Start Finch
      {Finch, name: MacgregorValleyFarm.Finch},
      # Start the Endpoint (http/https)
      MacgregorValleyFarmWeb.Endpoint
      # Start a worker by calling: MacgregorValleyFarm.Worker.start_link(arg)
      # {MacgregorValleyFarm.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: MacgregorValleyFarm.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    MacgregorValleyFarmWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
