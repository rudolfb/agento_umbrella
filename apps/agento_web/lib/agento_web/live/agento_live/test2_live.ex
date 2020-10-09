defmodule AgentoWeb.Test2Live do
  use AgentoWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~L"""
    <button class="button w-24 mr-1 mb-2 bg-theme-9 text-white">Test 2</button>
    """
  end
end
