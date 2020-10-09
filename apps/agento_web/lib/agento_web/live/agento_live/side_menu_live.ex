defmodule AgentoWeb.SideMenuLive do
  use AgentoWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~L"""
      <!-- BEGIN: Side Menu -->
      <nav class="side-nav">
        <a href="" class="intro-x flex items-center pl-5 pt-4">
          <img alt="Agent Online" class="w-6" src="/images/logo.svg">
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
          <li>
            <a href="javascript:;.html" class="side-menu side-menu--active">
              <div class="side-menu__icon"> <i data-feather="edit"></i> </div>
              <div class="side-menu__title"> Crud <i data-feather="chevron-down" class="side-menu__sub-icon"></i> </div>
            </a>
            <ul class="side-menu__sub-open">
              <li>
                <a href="side-menu-light-crud-data-list.html" class="side-menu">
                  <div class="side-menu__icon"> <i data-feather="activity"></i> </div>
                  <div class="side-menu__title"> Data List </div>
                </a>
              </li>
              <li>
                <a href="side-menu-light-crud-form.html" class="side-menu side-menu--active">
                  <div class="side-menu__icon"> <i data-feather="activity"></i> </div>
                  <div class="side-menu__title"> Form </div>
                </a>
              </li>
            </ul>
          </li>
        </ul>
      </nav>
      <!-- END: Side Menu -->
    """
  end
end
