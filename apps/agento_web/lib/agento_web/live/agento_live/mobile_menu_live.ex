defmodule AgentoWeb.MobileMenuLive do
  use AgentoWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~L"""
        <!-- BEGIN: Mobile Menu -->
         <div class="mobile-menu md:hidden">
          <div class="mobile-menu-bar">
            <a href="" class="flex mr-auto">
              <img alt="Agent Online" class="w-6" src="/images/logo.svg">
            </a>
            <a href="javascript:;" id="mobile-menu-toggler"> <i data-feather="bar-chart-2" class="w-8 h-8 text-white transform -rotate-90"></i> </a>
          </div>
          <ul class="border-t border-theme-24 py-5 hidden">
            <li>
              <a href="index.html" class="menu">
                <div class="menu__icon"> <i data-feather="home"></i> </div>
                <div class="menu__title"> Dashboard </div>
              </a>
            </li>
            <li class="menu__devider my-6"></li>
            <li>
              <a href="javascript:;.html" class="menu menu--active">
                <div class="menu__icon"> <i data-feather="edit"></i> </div>
                <div class="menu__title"> Crud <i data-feather="chevron-down" class="menu__sub-icon"></i> </div>
              </a>
              <ul class="menu__sub-open">
                <li>
                  <a href="side-menu-light-crud-data-list.html" class="menu">
                    <div class="menu__icon"> <i data-feather="activity"></i> </div>
                    <div class="menu__title"> Data List </div>
                  </a>
                </li>
                <li>
                  <a href="side-menu-light-crud-form.html" class="menu menu--active">
                    <div class="menu__icon"> <i data-feather="activity"></i> </div>
                    <div class="menu__title"> Form </div>
                  </a>
                </li>
              </ul>
            </li>
          </ul>
        </div>
        <!-- END: Mobile Menu -->
    """
  end
end
