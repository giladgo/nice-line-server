require './data'

class Lines
  def self.lines
    Line.all.map(&:line)
  end
end
