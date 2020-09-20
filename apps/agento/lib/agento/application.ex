defmodule Agento.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Agento.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Agento.PubSub}
      # Start a worker by calling: Agento.Worker.start_link(arg)
      # {Agento.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: Agento.Supervisor)
  end
end
