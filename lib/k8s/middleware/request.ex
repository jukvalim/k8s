defmodule K8s.Middleware.Request do
  @moduledoc "HTTP Request middleware"

  @typedoc "MIddleware Request type"
  @type t :: %__MODULE__{
          cluster: atom(),
          method: atom(),
          url: String.t(),
          body: String.t() | map() | list(map()) | nil,
          headers: Keyword.t() | nil,
          opts: Keyword.t() | nil
        }

  defstruct cluster: nil, method: nil, url: nil, body: nil, headers: [], opts: []

  @doc "Request middleware callback"
  @callback call(t()) :: {:ok, t()} | :error
end