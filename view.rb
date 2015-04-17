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
    card.answer == user_input ?  "Correct!" : "Incorrect, try again."
  end

  def goodbye
    #summary
  end

  def user_input
    gets.chomp
  end

end
