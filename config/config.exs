# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of Mix.Config.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
use Mix.Config

# Configure Mix tasks and generators
config :agento,
  ecto_repos: [Agento.Repo]

config :agento_web,
  ecto_repos: [Agento.Repo],
  generators: [context_app: :agento]

# Configures the endpoint
config :agento_web, AgentoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "13IDKLy7OZAegTm0rGFzy6Aw5rgkAH1t+y8uguTsRf5KIgS9XbBcBiMwcoNh5S6H",
  render_errors: [view: AgentoWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Agento.PubSub,
  live_view: [signing_salt: "6RZ6Xorz"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
