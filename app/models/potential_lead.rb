class PotentialLead
  def self.list
    offset = rand(BuiltWith.count)
    ids = PotentialClient.all.map{|d| d.built_with_id }
    BuiltWith.where.not(:id => ids).offset(offset).first
  end
end
