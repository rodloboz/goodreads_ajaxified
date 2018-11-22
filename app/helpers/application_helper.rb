module ApplicationHelper
  def set_stars(rating)
    result = ""
    for i in 1..5
      if i > rating
        result << '<span class="star-icon">☆</span>'
      else
        result << '<span class="star-icon full">☆</span>'
      end
    end
    return result.html_safe
  end

  def user_avatar(user)
    if user.avatar_url.nil?
      image_path 'geek.jpg'
    else
      user.avatar_url
    end
  end
end
