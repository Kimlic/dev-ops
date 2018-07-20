defmodule RpCore.Model do
    defmacro __using__(_) do
        quote do
            use RpCore.Schema
  
            import Ecto.Changeset
            import Ecto.Query
            
            import RpCore.QueryAPI, only: [coalesce: 2]
        end
    end
end
  