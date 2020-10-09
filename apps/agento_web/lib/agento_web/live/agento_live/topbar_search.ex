defmodule AgentoWeb.TopbarSearchLive do
  use AgentoWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~L"""
    <!-- BEGIN: Search -->
    <div class="intro-x relative mr-3 sm:mr-6">
      <div class="search hidden sm:block">
        <input type="text" class="search__input input placeholder-theme-13" placeholder="Search...">
        <i data-feather="search" class="search__icon dark:text-gray-300"></i>
      </div>
      <a class="notification sm:hidden" href=""> <i data-feather="search" class="notification__icon dark:text-gray-300"></i> </a>
      <div class="search-result">
        <div class="search-result__content">
          <div class="search-result__content__title">Pages</div>
          <div class="mb-5">
            <a href="" class="flex items-center">
              <div class="w-8 h-8 bg-theme-18 text-theme-9 flex items-center justify-center rounded-full"> <i class="w-4 h-4" data-feather="inbox"></i> </div>
              <div class="ml-3">Mail Settings</div>
            </a>
            <a href="" class="flex items-center mt-2">
              <div class="w-8 h-8 bg-theme-17 text-theme-11 flex items-center justify-center rounded-full"> <i class="w-4 h-4" data-feather="users"></i> </div>
              <div class="ml-3">Users & Permissions</div>
            </a>
            <a href="" class="flex items-center mt-2">
              <div class="w-8 h-8 bg-theme-14 text-theme-10 flex items-center justify-center rounded-full"> <i class="w-4 h-4" data-feather="credit-card"></i> </div>
              <div class="ml-3">Transactions Report</div>
            </a>
          </div>
          <div class="search-result__content__title">Users</div>
          <div class="mb-5">
            <a href="" class="flex items-center mt-2">
              <div class="w-8 h-8 image-fit">
                <img alt="Midone Tailwind HTML Admin Template" class="rounded-full" src="/images/profile-5.jpg">
              </div>
              <div class="ml-3">Sean Connery</div>
              <div class="ml-auto w-48 truncate text-gray-600 text-xs text-right">seanconnery@left4code.com</div>
            </a>
            <a href="" class="flex items-center mt-2">
              <div class="w-8 h-8 image-fit">
                <img alt="Midone Tailwind HTML Admin Template" class="rounded-full" src="/images/profile-14.jpg">
              </div>
              <div class="ml-3">Leonardo DiCaprio</div>
              <div class="ml-auto w-48 truncate text-gray-600 text-xs text-right">leonardodicaprio@left4code.com</div>
            </a>
            <a href="" class="flex items-center mt-2">
              <div class="w-8 h-8 image-fit">
                <img alt="Midone Tailwind HTML Admin Template" class="rounded-full" src="/images/profile-5.jpg">
              </div>
              <div class="ml-3">Denzel Washington</div>
              <div class="ml-auto w-48 truncate text-gray-600 text-xs text-right">denzelwashington@left4code.com</div>
            </a>
            <a href="" class="flex items-center mt-2">
              <div class="w-8 h-8 image-fit">
                <img alt="Midone Tailwind HTML Admin Template" class="rounded-full" src="/images/profile-5.jpg">
              </div>
              <div class="ml-3">Arnold Schwarzenegger</div>
              <div class="ml-auto w-48 truncate text-gray-600 text-xs text-right">arnoldschwarzenegger@left4code.com</div>
            </a>
          </div>
          <div class="search-result__content__title">Products</div>
          <a href="" class="flex items-center mt-2">
            <div class="w-8 h-8 image-fit">
              <img alt="Midone Tailwind HTML Admin Template" class="rounded-full" src="/images/preview-12.jpg">
            </div>
            <div class="ml-3">Samsung Galaxy S20 Ultra</div>
            <div class="ml-auto w-48 truncate text-gray-600 text-xs text-right">Smartphone &amp; Tablet</div>
          </a>
          <a href="" class="flex items-center mt-2">
            <div class="w-8 h-8 image-fit">
              <img alt="Midone Tailwind HTML Admin Template" class="rounded-full" src="/images/preview-4.jpg">
            </div>
            <div class="ml-3">Dell XPS 13</div>
            <div class="ml-auto w-48 truncate text-gray-600 text-xs text-right">PC &amp; Laptop</div>
          </a>
          <a href="" class="flex items-center mt-2">
            <div class="w-8 h-8 image-fit">
              <img alt="Midone Tailwind HTML Admin Template" class="rounded-full" src="/images/preview-11.jpg">
            </div>
            <div class="ml-3">Samsung Galaxy S20 Ultra</div>
            <div class="ml-auto w-48 truncate text-gray-600 text-xs text-right">Smartphone &amp; Tablet</div>
          </a>
          <a href="" class="flex items-center mt-2">
            <div class="w-8 h-8 image-fit">
              <img alt="Midone Tailwind HTML Admin Template" class="rounded-full" src="/images/preview-8.jpg">
            </div>
            <div class="ml-3">Nikon Z6</div>
            <div class="ml-auto w-48 truncate text-gray-600 text-xs text-right">Photography</div>
          </a>
        </div>
      </div>
    </div>
    <!-- END: Search -->
    """
  end
end
