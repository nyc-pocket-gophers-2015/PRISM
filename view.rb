module View

  extend self

  def welcome
    #{deck.topic}
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
    puts "Thanks for playing!! Keeping Studying"
  end

  def user_input
    gets.chomp
  end

end
