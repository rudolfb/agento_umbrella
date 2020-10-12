defmodule AgentoWeb.TestLiveSidebarComponent do
  # If you generated an app with mix phx.new --live,
  # the line below would be: use MyAppWeb, :live_component
  use Phoenix.LiveComponent

  def render(assigns) do
    ~L"""
    <div class="hero"><%= @content %></div>
    """
  end
end
