defmodule AgentoWeb.CountryLive.Index do
  use AgentoWeb, :live_view

  alias Agento.Basedata.CountryContext
  alias Agento.Basedata.CountryContext.Country

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, :countries, list_countries())}
  end

  @impl true
  def handle_params(params, _url, socket) do
    {:noreply, apply_action(socket, socket.assigns.live_action, params)}
  end

  defp apply_action(socket, :edit, %{"id" => id}) do
    socket
    |> assign(:page_title, "Edit Country")
    |> assign(:country, CountryContext.get_country!(id))
  end

  defp apply_action(socket, :new, _params) do
    socket
    |> assign(:page_title, "New Country")
    |> assign(:country, %Country{})
  end

  defp apply_action(socket, :index, _params) do
    socket
    |> assign(:page_title, "Listing Countries")
    |> assign(:country, nil)
  end

  @impl true
  def handle_event("delete", %{"id" => id}, socket) do
    country = CountryContext.get_country!(id)
    {:ok, _} = CountryContext.delete_country(country)

    {:noreply, assign(socket, :countries, list_countries())}
  end

  defp list_countries do
    CountryContext.list_countries()
  end
end
