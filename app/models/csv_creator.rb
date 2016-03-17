class CsvCreator
  def generate(data ,select ,options = {})
    CSV.generate(options) do |csv|
      csv <<  select
      data.each do |product|
        r = [product.id, product.name, product.email, product.last_name, product.title, product.company]
        csv << r
      end
    end
  end
end
