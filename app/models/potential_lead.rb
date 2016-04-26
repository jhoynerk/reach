class PotentialLead
  def self.list
    offset = rand(BuiltWith.count)
    ids = PotentialClient.all.map{|d| d.built_with_id }
    BuiltWith.where.not(:id => ids,:auth_token  => nil).offset(offset).first
  end
end
