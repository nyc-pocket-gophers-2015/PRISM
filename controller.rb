require_relative 'card_model'
require_relative 'deck_model'
require_relative 'parser'
require_relative 'view'



def check(card, input)
  card.answer.downcase == input.downcase
end



if ARGV != []
  file = ARGV[0]
else
  file = 'flashcard_samples.txt'
end

View.welcome
begin
  card_objects = Parser.parse_data(file).map {|hash| Card.new(hash)}
  deck = Deck.new(topic: file, cards: card_objects)
  deck.cards.each do |card|
    count = 0
    checker = nil
    until count == 3 || checker == true
      View.ask_question(card)
      input = View.user_input.downcase
      View.result(card, input)
      count +=1
      checker =check(card, input)
    end
  end
  # deck.study_and_review
rescue Errno::ENOENT
  puts "That wasn't a valid file. Please try again."
end
