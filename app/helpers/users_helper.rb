module UsersHelper
    
    #will return the Gravatar for the given user
    def gravatar_for(user)
        gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
        #hexdigest is apart of the Digest library
        gravatar_url =  "https://secure.gravatar.com/avatar/#{gravatar_id}"
        image_tag(gravatar_url, alt: user.name, class: "gravatar")
    end
end
