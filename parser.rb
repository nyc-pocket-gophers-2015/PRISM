module Parser

  def self.parser(file, cards_array = [])
    File.open(file, "r").each_slice(3) do |question, answer, _ |
      cards_array << {question: question.chomp, answer: answer.chomp)}
    end
    cards_array
  end

end
