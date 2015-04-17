class View

  def welcome
    #{deck.topic}
    puts '*' * 100
    puts "Welcome to Ruby Flash Cards. To play, just enter the correct term for each definition.  Ready?  Go!"
    puts '*' * 100
  end

  def ask_question(card)
    puts "Question: #{card.question}"
  end

  def result
    if card.answer == user_input ?  "Correct!" : "Incorrect, try again."
  end

  def goodbye
    #summary
  end

  def user_input
    gets.chomp
  end

end

view = View.new
view.welcome


if ARGV != []
  file = ARGV[0]
else
  file = 'flashcard_samples.txt'
end

puts "Welcome! You are using #{file}"
puts "To play, just enter the correct term for each definition.  Ready?  Go!"
begin
  test = Deck.new(file)
  test.study_and_review
rescue Errno::ENOENT
  puts "That wasn't a valid file. Please try again."
end


