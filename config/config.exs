# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phdemo,
  ecto_repos: [Phdemo.Repo]

# Configures the endpoint
config :phdemo, PhdemoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "y0k5YeNkacbq39xXfqRIEcYybBPc7fdlBBk996+6o7CDtC6dwp17X3m3LQKFwjyt",
  render_errors: [view: PhdemoWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Phdemo.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
