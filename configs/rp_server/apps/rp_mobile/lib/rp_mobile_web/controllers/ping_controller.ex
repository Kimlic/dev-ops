defmodule RpMobileWeb.PingController do
    use RpMobileWeb, :controller
  
    def ping(conn, _), do: send_resp(conn, :ok, "Pong")

    def rabbit_job(conn, _) do
        RpCore.rabbit_job
        
        send_resp(conn, :ok, "Rabbit Pong")
    end

    def quorum_call(conn, _) do
        RpCore.quorum_call

        send_resp(conn, :ok, "Quorum Pong")
    end
end
  