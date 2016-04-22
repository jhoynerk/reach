class CsvCreator
  def generate(data ,select ,options = {})
    CSV.generate(options) do |csv|
      csv <<  select
      data.select(select).each do |product|
        values = Array.new  
        values << product.id
        values << product.name.to_s.split(' ')[0]
        values << product.email     
        values << product.last_name
        csv << values
      end
    end
  end
end