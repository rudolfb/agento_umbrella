defmodule AgentoWeb.TopbarNotificationLive do
  use AgentoWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~L"""
    <!-- BEGIN: Notifications -->
    <div class="intro-x dropdown mr-auto sm:mr-6">
      <div class="dropdown-toggle notification notification--bullet cursor-pointer"> <i data-feather="bell" class="notification__icon dark:text-gray-300"></i> </div>
      <div class="notification-content pt-2 dropdown-box">
        <div class="notification-content__box dropdown-box__content box dark:bg-dark-6">
          <div class="notification-content__title">Notifications</div>
          <div class="cursor-pointer relative flex items-center ">
            <div class="w-12 h-12 flex-none image-fit mr-1">
              <img alt="Midone Tailwind HTML Admin Template" class="rounded-full" src="/images/profile-5.jpg">
              <div class="w-3 h-3 bg-theme-9 absolute right-0 bottom-0 rounded-full border-2 border-white"></div>
            </div>
            <div class="ml-2 overflow-hidden">
              <div class="flex items-center">
                <a href="javascript:;" class="font-medium truncate mr-5">Sean Connery</a>
                <div class="text-xs text-gray-500 ml-auto whitespace-no-wrap">01:10 PM</div>
              </div>
              <div class="w-full truncate text-gray-600">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 20</div>
            </div>
          </div>
          <div class="cursor-pointer relative flex items-center mt-5">
            <div class="w-12 h-12 flex-none image-fit mr-1">
              <img alt="Midone Tailwind HTML Admin Template" class="rounded-full" src="/images/profile-14.jpg">
              <div class="w-3 h-3 bg-theme-9 absolute right-0 bottom-0 rounded-full border-2 border-white"></div>
            </div>
            <div class="ml-2 overflow-hidden">
              <div class="flex items-center">
                <a href="javascript:;" class="font-medium truncate mr-5">Leonardo DiCaprio</a>
                <div class="text-xs text-gray-500 ml-auto whitespace-no-wrap">01:10 PM</div>
              </div>
              <div class="w-full truncate text-gray-600">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500</div>
            </div>
          </div>
          <div class="cursor-pointer relative flex items-center mt-5">
            <div class="w-12 h-12 flex-none image-fit mr-1">
              <img alt="Midone Tailwind HTML Admin Template" class="rounded-full" src="/images/profile-5.jpg">
              <div class="w-3 h-3 bg-theme-9 absolute right-0 bottom-0 rounded-full border-2 border-white"></div>
            </div>
            <div class="ml-2 overflow-hidden">
              <div class="flex items-center">
                <a href="javascript:;" class="font-medium truncate mr-5">Denzel Washington</a>
                <div class="text-xs text-gray-500 ml-auto whitespace-no-wrap">01:10 PM</div>
              </div>
              <div class="w-full truncate text-gray-600">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem </div>
            </div>
          </div>
          <div class="cursor-pointer relative flex items-center mt-5">
            <div class="w-12 h-12 flex-none image-fit mr-1">
              <img alt="Midone Tailwind HTML Admin Template" class="rounded-full" src="/images/profile-5.jpg">
              <div class="w-3 h-3 bg-theme-9 absolute right-0 bottom-0 rounded-full border-2 border-white"></div>
            </div>
            <div class="ml-2 overflow-hidden">
              <div class="flex items-center">
                <a href="javascript:;" class="font-medium truncate mr-5">Arnold Schwarzenegger</a>
                <div class="text-xs text-gray-500 ml-auto whitespace-no-wrap">01:10 PM</div>
              </div>
              <div class="w-full truncate text-gray-600">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomi</div>
            </div>
          </div>
          <div class="cursor-pointer relative flex items-center mt-5">
            <div class="w-12 h-12 flex-none image-fit mr-1">
              <img alt="Midone Tailwind HTML Admin Template" class="rounded-full" src="/images/profile-10.jpg">
              <div class="w-3 h-3 bg-theme-9 absolute right-0 bottom-0 rounded-full border-2 border-white"></div>
            </div>
            <div class="ml-2 overflow-hidden">
              <div class="flex items-center">
                <a href="javascript:;" class="font-medium truncate mr-5">Robert De Niro</a>
                <div class="text-xs text-gray-500 ml-auto whitespace-no-wrap">03:20 PM</div>
              </div>
              <div class="w-full truncate text-gray-600">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- END: Notifications -->
    """
  end
end
