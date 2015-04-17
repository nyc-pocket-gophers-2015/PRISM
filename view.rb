module View

  extend self

  def welcome
    #{deck.topic}
    puts `clear`
    puts '*' * 100
    puts "Welcome to Ruby Flash Cards. To play, just enter the correct term for each definition.  Ready?  Go!"
    puts '*' * 100
  end

  def ask_question(card)
    puts "Question: #{card.question}"
  end

  def result(card, input)
    puts card.answer == input ?  "Correct!" : "Incorrect, try again."
  end

  def check(card, input)
    result(card, input)
    card.answer == input
  end

  def goodbye
    puts "Thanks for playing!!!\nPress \"Q\" to quit or \"N\" to load a new game"
  end

  def user_input
    ARGV.clear
    gets.chomp
  end

end
