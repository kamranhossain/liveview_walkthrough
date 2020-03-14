# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :liveview_walkthrough,
  ecto_repos: [LiveviewWalkthrough.Repo]

# Configures the endpoint
config :liveview_walkthrough, LiveviewWalkthroughWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "axF8gQdDnFCTVD/NidM7AwgXuTPaME6dSAHZHlsV8RsO6o+HEPfbiQ963gC8817X",
  render_errors: [view: LiveviewWalkthroughWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: LiveviewWalkthrough.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "xvga9Cp4"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
