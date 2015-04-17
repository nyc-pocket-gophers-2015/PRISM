require_relative 'card_model'
require_relative 'deck_model'
require_relative 'parser'
require_relative 'view'

if ARGV != []
  file = ARGV[0]
else
  file = 'flashcard_samples.txt'
end

def instantiate_deck(file)
  card_objects = Parser.parse_data(file).map {|hash| Card.new(hash)}
  deck = Deck.new(topic: file, cards: card_objects)
end

def exit_program
  puts `clear`
  exit
end

def play(deck)
  View.welcome
  begin
    deck.cards.shuffle.each do |card|
      count = 0
      checker = nil
      until count == 3 || checker == true
        View.ask_question(card)
        input = View.user_input.downcase
        exit_program if input.upcase == "q".upcase
        View.result(card, input)
        count +=1
        card.tries += 1
        checker = card.answer.downcase == input.downcase
      end
    end
    View.goodbye
    # deck.study_and_review
  rescue Errno::ENOENT
    puts "That wasn't a valid file. Please try again."
  end
end


play instantiate_deck(file)
