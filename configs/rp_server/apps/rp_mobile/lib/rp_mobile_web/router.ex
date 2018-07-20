defmodule RpMobileWeb.Router do
  use RpMobileWeb, :router
  use Plug.ErrorHandler

  alias Plug.LoggerJSON

  require Logger

  pipeline :api do
    plug :accepts, ["json-api"]
  end

  scope "/api", RpMobileWeb do
    pipe_through :api

    get "/ping", PingController, :index
    post "/rabbit_job", PingController, :rabbit_job
    get "/quorum_call", PingController, :quorum_call
  end

  defp handle_errors(%Plug.Conn{status: 500} = conn, %{kind: kind, reason: reason, stack: stacktrace}) do
    LoggerJSON.log_error(kind, reason, stacktrace)

    Logger.log(:info, fn ->
      Jason.encode!(%{
        "log_type" => "error",
        "request_params" => conn.params,
        "request_id" => Logger.metadata()[:request_id]
      })
    end)

    send_resp(conn, 500, Jason.encode!(%{errors: %{detail: "Internal server error"}}))
  end
  defp handle_errors(_, _), do: nil
end
