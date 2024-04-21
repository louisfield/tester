defmodule Tester.FakeData.Repo do
  @callback get_products(map()) :: list(map())

  @spec get_products(map()) :: list(map())
  defdelegate get_products(params), to: Tester.FakeData.Product
end
