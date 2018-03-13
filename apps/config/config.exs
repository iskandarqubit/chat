# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :apps,
  ecto_repos: [Apps.Repo]

# Configures the endpoint
config :apps, AppsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "HAY70FQzGvAGQU87fwJKFqjtSRWV4vI2LkAjzsSimj0PoeHRg4TTMpmlm/ESF0E0",
  render_errors: [view: AppsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Apps.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
