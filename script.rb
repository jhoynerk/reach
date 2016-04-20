b = BuiltWith.where(auth_token: nil)
b.each do |bw|
  status = ScrapingWeb.exist_token("https://"+bw.domain)
  bw.auth_token=status
  bw.save!
end