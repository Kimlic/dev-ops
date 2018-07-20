use Mix.Config

config :rp_core, RpCore.Repo,
    adapter: Ecto.Adapters.Postgres,
    database: "rp_core",
    username: "kimlic",
    password: "kimlic",
    hostname: "localhost",
    port: "5432",
    pool_size: 10

config :task_bunny,
    hosts: [
        default: [
            # connect_options: "amqp://0.0.0.0:5672?heartbeat=30"
            connect_options: [
                host: "localhost",
                username: "kimlic",
                password: "kimlic"
            ]]]

config :ethereumex, url: "http://127.0.0.1:22000"

config :logger, level: :debug