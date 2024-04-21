defmodule TesterWeb.LiveView.Products do
  use TesterWeb, :live_view

  alias Tester.FakeData.Repo

  def render(assigns) do
    ~H"""
    <div>
      <h1>Products</h1>
      <ul>
        <div
          :for={product <- @products}
          href="#"
          class="col-auto grid grid-cols-4 gap-4 block max-w-sm p-6 bg-white border border-gray-200 rounded-lg shadow hover:bg-gray-100 dark:bg-gray-800 dark:border-gray-700 dark:hover:bg-gray-700 w-fit"
        >
          <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
            <%= product.name %>
          </h5>
          <p class="font-normal text-gray-700 dark:text-gray-400">
            <%= product.price %>
          </p>
        </div>
      </ul>
    </div>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, assign(socket, products: Repo.get_products(%{}))}
  end
end
