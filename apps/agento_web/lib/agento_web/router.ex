defmodule AgentoWeb.Router do
  use AgentoWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {AgentoWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", AgentoWeb do
    pipe_through :browser

    live "/", PageLive, :index

    live "/testlive", TestLiveLive, :index

    live "/countries", CountryLive.Index, :index
    live "/countries/new", CountryLive.Index, :new
    live "/countries/:id/edit", CountryLive.Index, :edit

    live "/countries/:id", CountryLive.Show, :show
    live "/countries/:id/show/edit", CountryLive.Show, :edit

    live "/app", AgentoLive.Index, :index
    live "/app/:submenu", AgentoLive.Index, :index, test: "test"
  end

  # Other scopes may use custom stacks.
  # scope "/api", AgentoWeb do
  #   pipe_through :api
  # end

  # Enables LiveDashboard only for development
  #
  # If you want to use the LiveDashboard in production, you should put
  # it behind authentication and allow only admins to access it.
  # If your application does not have an admins-only section yet,
  # you can use Plug.BasicAuth to set up some basic authentication
  # as long as you are also using SSL (which you should anyway).
  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through :browser
      live_dashboard "/dashboard", metrics: AgentoWeb.Telemetry
    end
  end
end
