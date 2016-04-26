class CsvCreator
  def generate(data ,select)
    CSV.generate() do |csv|
      csv <<  select
      data.select(select).each do |attribute|
        values = Array.new  
        values << attribute.id
        values << attribute.first_name
        values << attribute.email     
        values << attribute.last_name
        values << attribute.title
        csv << values
      end
    end
  end
end