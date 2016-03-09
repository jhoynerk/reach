require 'csv'

class BuiltWithImporter
  attr_accessor :count, :path

  def initialize(path)
    @path = path
    @count = 0
  end

  def read
    CSV.read(@path)
  end

  def import
    CSV.foreach(@path) do |row|
      b = BuiltWith.new
      b.domain = row[0]
      b.location = row[1]
      b.company = row[2]
      b.vertical = row[3]
      b.telephones = row[4]
      b.people = row[5]
      b.position = row[6]
      b.emails = row[7]
      b.twitter = row[8]
      b.facebook = row[9]
      b.linkedin = row[10]
      b.google = row[11]
      b.pinterest = row[12]
      b.github = row[13]
      b.instagram = row[14]
      b.vk = row[15]
      b.vimeo = row[16]
      b.youtube = row[17]
      b.city = row[18]
      b.state = row[19]
      b.zip = row[20]
      b.country = row[21]
      b.save
      @count += 1
    end
  end
end
