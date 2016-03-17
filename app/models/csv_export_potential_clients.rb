class CSVExportPotentialClients
  def self.export(data)
    CsvCreator.new.generate(data, ["id", "name", "email", "last_name", "title", "company"])
  end
end


