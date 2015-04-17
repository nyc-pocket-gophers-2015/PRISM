require_relative 'card_model'
require_relative 'deck_model'
require_relative 'parser'
require_relative 'view'






if ARGV != []
  file = ARGV[0]
else
  file = 'flashcard_samples.txt'
end

# puts "Welcome! You are using #{file}"
# puts "To play, just enter the correct term for each definition.  Ready?  Go!"
# begin
  card_objects = Parser.parse_data(file).map {|hash| Card.new(hash)}
  deck = Deck.new(topic: file, cards: card_objects)

#   deck.study_and_review
# rescue Errno::ENOENT
#   puts "That wasn't a valid file. Please try again."
# end
