module SupervisorsHelper

  # Returns the Gravatar for the given user.
  def gravatar_for(supervisor, options = { size: 80 })
    gravatar_id = Digest::MD5::hexdigest(supervisor.email.downcase)
    size = options[:size]	
    gravatar_url = "http://static1.squarespace.com/static/543148b2e4b0134c795d2365/54f5b2ede4b04c82748c69d0/54f5b2ede4b04c82748c69d1/1425388270053/avatar-man.jpg"
    image_tag(gravatar_url, alt: supervisor.name, class: "gravatar")
  end
end