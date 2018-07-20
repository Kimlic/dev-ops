defmodule RpCore.Contracts.SimpleStorage do
    @moduledoc false
  
    alias RpCore.ABI
    alias __MODULE__
  
    @abi_dir "priv/abi"
  
    @contract_simple_storage :simple_storage
  
    @spec hash_data(atom, binary, list) :: binary
    def hash_data(contract, function, params) do
      contract
      |> load_abi()
      |> ABI.parse_specification()
      |> Enum.find(&(&1.function == function))
      |> ABI.encode(params)
      |> Base.encode16(case: :lower)
      |> add_prefix("0x")
    end
  
    @spec load_abi(atom) :: [map]
    defp load_abi(contract) do
      contract
      |> contract_path()
      |> File.read!()
      |> Jason.decode!()
    end
  
    @spec contract_path(atom) :: binary
    defp contract_path(@contract_simple_storage), do: Application.app_dir(:rp_core, @abi_dir <> "/SimpleStorage.json")
    defp contract_path(_), do: throw "Invalid contract"
    
    @spec add_prefix(binary, binary) :: binary
    defp add_prefix(string, prefix), do: prefix <> string
  end
  