defmodule AgentoWeb.TopbarLive do
  use AgentoWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~L"""
    <!-- BEGIN: Top Bar -->
    <div class="top-bar">
    <%= live_render(@socket, AgentoWeb.TopbarBreadcrumbLive, id: "") %>
    <%= live_render(@socket, AgentoWeb.TopbarSearchLive, id: "") %>
    <%= live_render(@socket, AgentoWeb.TopbarNotificationLive, id: "") %>
    <%= live_render(@socket, AgentoWeb.TopbarAccountLive, id: "") %>
    </div>
    <!-- END: Top Bar -->
    """
  end
end
