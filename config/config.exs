# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :banking,
  ecto_repos: [Banking.Repo]

# Configures the endpoint
config :banking, BankingWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "SivLIzZJ/Zu3AgG6FDet3k7XxpEqDEljiDwnOhz+H/vsNPL6aweeWsxrIq51a2UU",
  render_errors: [view: BankingWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Banking.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "/6eLYMyK"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
