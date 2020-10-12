defmodule AgentoWeb.TestLiveLive do
  use AgentoWeb, :live_view

  def mount(_params, _session, socket) do
    socket = assign(socket, content: "Hello world")
    {:ok, socket}
  end

  def render(assigns) do
    ~L"""
    <div class="">
    <%= live_component(@socket, AgentoWeb.TestLiveSidebarComponent, id: :hero, content: @content) %>
    </div>
    """
  end
end
