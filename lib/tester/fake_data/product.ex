defmodule Tester.FakeData.Product do
  @products [
    %{
      id: 1,
      name: "Product 1",
      price: 100
    },
    %{
      id: 2,
      name: "Product 2",
      price: 200
    },
    %{
      id: 3,
      name: "Product 3",
      price: 300
    },
    %{
      id: 4,
      name: "Product 4",
      price: 400
    },
    %{
      id: 5,
      name: "Product 5",
      price: 500
    },
    %{
      id: 6,
      name: "Product 6",
      price: 600
    },
    %{
      id: 7,
      name: "Product 7",
      price: 700
    },
    %{
      id: 8,
      name: "Product 8",
      price: 800
    },
    %{
      id: 9,
      name: "Product 9",
      price: 900
    }
  ]

  @spec get_products(map()) :: list(map())
  def get_products(_params) do
    @products
  end
end
