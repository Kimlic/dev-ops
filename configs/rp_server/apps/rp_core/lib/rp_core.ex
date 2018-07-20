defmodule RpCore do

    alias RpCore.Contracts.SimpleStorage

    import Logger

    def rabbit_job do
        # res = %{ data: data, meta: meta }
        # |> RpCore.Jobs.DemoJob.enqueue!

        res = TaskBunny.Job.enqueue!(RpCore.Jobs.DemoJob, %{})

        IO.inspect "RABBIT RES: #{res}"
        :ok
    end

    def quorum_call do
        res = call()
        Logger.warn "QUORUM RES: #{res}"
        :ok
    end

    defp call(attempt \\ 1) do
        data = SimpleStorage.hash_data(:simple_storage, "get", [{}])
        eth_params = %{
            from: "0xaf0524fe539dacd488391d48a892857347a81584", 
            to: "0xe96c970346e5cab9b686db82678d2f8207687844", 
            data: data,
            gasPrice: "0x0", 
            gas: "0x4612388"
        }
        Logger.warn "eth_params: #{inspect eth_params}"
        case Ethereumex.HttpClient.eth_call(eth_params, "latest", []) do
            {:ok, response} -> Logger.warn "ETH RESP: #{inspect response}"
            {:error, err} ->
                Logger.warn "ETH ERR: #{inspect err}"
                case attempt do
                    3 -> {:error, err}
                    _ ->
                        :timer.sleep(50)
                        call(attempt + 1)
                end
        end
    end
end
