defmodule ForwardAuthNginxPhx.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      ForwardAuthNginxPhxWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: ForwardAuthNginxPhx.PubSub},
      # Start the Endpoint (http/https)
      ForwardAuthNginxPhxWeb.Endpoint
      # Start a worker by calling: ForwardAuthNginxPhx.Worker.start_link(arg)
      # {ForwardAuthNginxPhx.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ForwardAuthNginxPhx.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    ForwardAuthNginxPhxWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
