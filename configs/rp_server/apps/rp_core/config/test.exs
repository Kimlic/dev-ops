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
    queue: [
        namespace: "rp_core-",
        queues: [
            [name: "demo_job", jobs: [DemoJob], worker: false]
        ]]

config :logger, level: :debug