use Mix.Config

# config :rp_mobile, RpMobileWeb.Endpoint,
#   load_from_system_env: true,
#   secret_key_base: System.get_env("RP_MOBILE_SECRET_KEY_BASE"),
#   http: [port: System.get_env("RP_MOBILE_PORT")],
#   url: [host: System.get_env("RP_MOBILE_HOST"), port: System.get_env("RP_MOBILE_PORT")],
#   static_url: [
#     scheme: System.get_env("RP_MOBILE_STATIC_SCHEME"),
#     host: System.get_env("RP_MOBILE_STATIC_HOST"),
#     port: System.get_env("RP_MOBILE_STATIC_PORT")
#   ],
#   debug_errors: false,
#   code_reloader: false,
#   server: true

config :rp_mobile, RpMobileWeb.Endpoint,
  load_from_system_env: true,
  secret_key_base: "TaRwP6iMHBxzDxN3A3nhQ649q86wLxR2tw4oKOTpJpIDdKNbmnDcg4WvQCcC79yY",
  http: [port: 4000],
  url: [host: "localhost", port: 4000],
  static_url: [
    scheme: "https",
    host: "localhost",
    port: 443
  ],
  debug_errors: false,
  code_reloader: false,
  server: true

config :logger, level: :info

config :phoenix, :serve_endpoints, true