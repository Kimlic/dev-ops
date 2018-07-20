use Mix.Config

# psql --host=kimlik.postgres.database.azure.com --port=5432 --username=kimlikpgadmin@kimlik --dbname=postgres
# Password for user kimlikpgadmin@kimlik: PDPVV5RcaSVd

# config :rp_core, RpCore.Repo,
#     adapter: Ecto.Adapters.Postgres,
#     database: System.get_env("RP_CORE_DB_DATABASE"),
#     username: System.get_env("RP_CORE_DB_USERNAME"),
#     password: System.get_env("RP_CORE_DB_PASSWORD"),
#     hostname: System.get_env("RP_CORE_DB_HOSTNAME"),
#     port: System.get_env("RP_CORE_DB_PORT"),
#     pool_size: System.get_env("RP_CORE_DB_POOL_SIZE")

config :rp_core, RpCore.Repo,
    adapter: Ecto.Adapters.Postgres,
    database: "rp_core",
    username: "kimlic@pharos",
    password: "2LDa2RXAKQ",
    hostname: "pharos.postgres.database.azure.com",
    port: "5432",
    pool_size: 10

config :task_bunny,
    hosts: [
        default: [
            connect_options: [
                host: "168.63.42.19",
                username: "kimlic",
                password: "v2re3X7tMP"
            ]]]

config :ethereumex, url: "http://13.73.176.135:22000"

config :logger, level: :info