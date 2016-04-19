require 'csv'

class BouncedEmailImporter
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
      b=PotentialClient.joins(:user).where(email: row[0]).update_all(:emailbounced =>true)
      @count += 1
    end
  end
end