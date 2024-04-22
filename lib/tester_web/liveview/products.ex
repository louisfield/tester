defmodule TesterWeb.LiveView.Products do
  use TesterWeb, :live_view

  alias Tester.FakeData.Repo

  def render(assigns) do
    ~H"""
    <div class=" w-screen h-screen bg-slate-700">
      <div class="w-100 h-96 grid grid-rows-3 grid-flow-col gap-4 flex flex-row ">
        <div class="row-span-3 rounded-lg shadow-lg bg-violet-950">01</div>
        <div class="col-span-2 rounded-lg shadow-lg bg-violet-950">02</div>
        <div class="row-span-2 col-span-2 rounded-lg shadow-lg bg-violet-950">03</div>
      </div>
    </div>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, assign(socket, products: Repo.get_products(%{}))}
  end
end
