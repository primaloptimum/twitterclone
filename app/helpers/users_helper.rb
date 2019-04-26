module UsersHelper
  def gravatar_for(user, size: 50)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/442189f710d9f5695b40906caed417cb?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
