use Mix.Config

config :rp_mobile, RpMobileWeb.Endpoint,
  http: [port: 4001],
  server: false

config :logger, level: :warn
