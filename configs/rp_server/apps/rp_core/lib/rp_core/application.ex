defmodule RpCore.Application do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      supervisor(RpCore.Repo, []),
      supervisor(Task.Supervisor, [[name: RpCore.TaskSupervisor]])
    ]
    opts = [strategy: :one_for_one, name: RpCore.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
