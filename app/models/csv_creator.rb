class CsvCreator
  def generate(data ,select ,options = {})
    CSV.generate(options) do |csv|
      csv <<  select
      data.select(select).each do |product|
        values = Array.new  
        values << product.id
        values << PotentialClient.firstname(product.name)
        values << product.email     
        values << product.last_name
        values << product.title
        csv << values
      end
    end
  end
end