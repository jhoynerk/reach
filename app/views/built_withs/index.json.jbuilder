json.array!(@built_withs) do |built_with|
  json.extract! built_with, :id, :domain, :location, :company, :vertical, :telephones, :people, :position, :emails, :twitter, :facebook, :linkedin, :google, :pinterest, :github, :instagram, :vk, :vimeo, :youtube, :city, :state, :zip, :country
  json.url built_with_url(built_with, format: :json)
end
