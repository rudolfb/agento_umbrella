defmodule AgentoWeb.SideMenuLive do
  use Phoenix.LiveComponent

  @appname "Agent Online"

  @menus [
    %{name: "order", href: "/order", data_feather: "book-open", title: "Order"},
    %{name: "customer", href: "/customer", data_feather: "user", title: "Customer"},
    %{name: "basedata", href: "/basedata", data_feather: "user", title: "Base data"},
    %{name: "statistics", href: "/statistics", data_feather: "list", title: "Statistics"},
    %{name: "accounting", href: "/accounting", data_feather: "credit-card", title: "Accounting"},
    %{name: "system", href: "/system", data_feather: "settings", title: "System"}
  ]

  def render(assigns) do
    appname = @appname
    menus = @menus

    ~L"""
      <!-- BEGIN: Side Menu -->
      <nav class="side-nav">
        <a href="" class="intro-x flex items-center pl-5 pt-4">
          <img alt="<%= appname %>" class="w-6" src="/images/logo.svg">
          <span class="hidden xl:block text-white text-lg ml-3"> Mid<span class="font-medium">one</span> </span>
        </a>
        <div class="side-nav__devider my-6"></div>
        <ul>
          <li>
            <a href="index.html" class="side-menu">
              <div class="side-menu__icon"> <i data-feather="home"></i> </div>
              <div class="side-menu__title"> Dashboard </div>
            </a>
          </li>
          <li class="side-nav__devider my-6"></li>

          <!-- <%= for menu <- menus do %>
             <%= mainmenuitem(%{name: menu.name, href: menu.href, data_feather: menu.data_feather, title: menu.title}) %>
           <% end %> -->


        </ul>
      </nav>
      <!-- END: Side Menu -->
    """
  end

  defp mainmenuitem(assigns) do
    ~L"""
    <li>
        <a href="<%= @href %>" class="side-menu">
        <div class="side-menu__icon"> <i data-feather="<%= @data_feather %>"></i> </div>
        <div class="side-menu__title"> <%= @title %> </div>
      </a>
    </li>
    """
  end
end
