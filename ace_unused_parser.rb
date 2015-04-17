
module Parser

  extend self
  def parse_txt filename
    File.open(filename).map { |line| line.chomp }.reject(&:empty?)
  end

end