# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :hack_upc_mentors_api,
  ecto_repos: [HackUpcMentorsApi.Repo]

# Configures the endpoint
config :hack_upc_mentors_api, HackUpcMentorsApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: System.get_env("PHOENIX_SECRET"),
  render_errors: [view: HackUpcMentorsApiWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: HackUpcMentorsApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Guardian configuration
config :hack_upc_mentors_api, HackUpcMentorsApi.Guardian,
  allowed_algos: ["HS512"], # optional
  verify_module: Guardian.JWT,  # optional
  issuer: "HackUPC",
  ttl: { 7, :days },
  allowed_drift: 2000,
  verify_issuer: true, # optional
  secret_key: System.get_env("GUARDIAN_SECRET"),
  serializer: HackUpcMentorsApi.GuardianSerializer

# Mailer configuration
config :hack_upc_mentors_api, HackUpcMentorsApi.Mailer,
  adapter: Bamboo.SendGridAdapter,
  api_key: System.get_env("SG_KEY")

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
