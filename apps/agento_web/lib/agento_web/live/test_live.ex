defmodule AgentoWeb.TestLive do
  # If you generated an app with mix phx.new --live,
  # the line below would be: use MyAppWeb, :live_view
  use Phoenix.LiveView

  def render(assigns) do
    ~L"""
    <p>Yo! I'm rendered by a LiveView</p>
    """
  end

  def mount(_params, _, socket) do
    {:ok, socket}
  end
end
