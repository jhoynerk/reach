class CsvCreator
  def generate(data ,select ,options = {})
    CSV.generate(options) do |csv|
      csv <<  select
      data.select(select).each do |product|
        csv << product.attributes.values_at(*select)
      end
    end
  end
end
