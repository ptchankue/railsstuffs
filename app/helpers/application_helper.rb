module ApplicationHelper
  def nav_link_to(name, url, match_controller: nil)
    active = if match_controller
      controller_name == match_controller.to_s
    else
      current_page?(url)
    end
    link_to name, url, class: "site-nav__link#{' is-active' if active}"
  end
end
