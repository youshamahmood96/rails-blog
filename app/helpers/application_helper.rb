module ApplicationHelper
    def gravatar_for(user, options = {size:80})
        email_address = user.email.downcase
        hash = Digest::MD5.hexdigest(email_address)
        size = options[:size]
        gravatar_URL = "https://www.gravatar.com/avatar/#{hash}?s=#{size}"
        image_tag(gravatar_URL, alt:user.username, class: "mx-auto d-block")
    end

end
