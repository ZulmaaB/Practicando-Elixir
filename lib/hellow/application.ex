defmodule Hellow.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Hellow.Repo,
      # Start the Telemetry supervisor
      HellowWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Hellow.PubSub},
      # Start the Endpoint (http/https)
      HellowWeb.Endpoint
      # Start a worker by calling: Hellow.Worker.start_link(arg)
      # {Hellow.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Hellow.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    HellowWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
