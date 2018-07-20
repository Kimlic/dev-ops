use Mix.Config

config :rp_core, namespace: RpCore
config :rp_core, ecto_repos: [RpCore.Repo]

config :task_bunny,
    # hosts: [
    #     default: [
    #         connect_options: "amqp://0.0.0.0:5672?heartbeat=30"
    #     ]],
    queue: [
        namespace: "rp_core.",
        queues: [
            [name: "demo", jobs: [RpCore.Jobs.DemoJob], worker: [concurrency: 10]]
        ]],
    failure_backend: [RpCore.Loggers.TaskBunny]

import_config "#{Mix.env()}.exs"