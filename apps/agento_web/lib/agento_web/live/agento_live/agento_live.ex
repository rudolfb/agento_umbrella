defmodule AgentoWeb.AgentoLive.Index do
  use AgentoWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def handle_params(%{"submenu" => submenu}, _, socket) do
    socket = assign(socket, submenu: submenu)

    {:noreply, socket}
  end

  @impl true
  def render(assigns) do
    IO.inspect(assigns)

    ~L"""
    <%= live_component(@socket, AgentoWeb.MobileMenuLive) %>

    <div class="flex">
      <%= live_component(@socket, AgentoWeb.SideMenuLive, id: "basedata") %>

      <!-- BEGIN: Content -->
        <div class="content">
          <%= live_render(@socket, AgentoWeb.TopbarLive, id: "") %>
          <%= live_render(@socket, AgentoWeb.TopbarFormLayoutLive, id: "") %>

        </div>
      <!-- END: Content -->
    </div>



    <%= cond do %>
    <% assigns.submenu == "countries" -> %>
     <%= live_render(@socket, AgentoWeb.Test1Live, id: "") %>
    <% true -> %>
     <%= live_render(@socket, AgentoWeb.Test2Live, id: "") %>
    <% end %>
    """
  end

  # @impl true
  # def handle_params(%{"id" => id}, _, socket) do
  #   {:noreply,
  #    socket
  #    |> assign(:page_title, page_title(socket.assigns.live_action))
  #    |> assign(:country, CountryContext.get_country!(id))}
  # end

  # defp page_title(:show), do: "Show Country"
  # defp page_title(:edit), do: "Edit Country"
end
