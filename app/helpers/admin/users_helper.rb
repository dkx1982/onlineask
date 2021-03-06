module Admin::UsersHelper
  def render_user_status(user)
    if user.admin?
      content_tag(:span, "", class: "fa fa-flag")
    else
      content_tag(:span, "", class: "fa fa-user")
    end
  end

  def change_user_status(user)
    if user.admin?
      link_to("ChangeToUser", change_to_user_admin_user_path(user), method: :post, class: "btn btn-xs btn-info")
    elsif !user.admin?
      link_to("ChangeToAdmin", change_to_admin_admin_user_path(user), method: :post, class: "btn btn-xs btn-info")
    end
  end
end
