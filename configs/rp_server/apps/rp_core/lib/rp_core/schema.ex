defmodule RpCore.Schema do
    defmacro __using__(_) do
        quote do
            use Ecto.Schema
            use Timex.Ecto.Timestamps, usec: false
  
            @schema_prefix "rp_core"
        end
    end
end  