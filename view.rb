class View

  def welcome
    #{deck.topic}
    puts '*' * 25
    puts "Welcome to Ruby Flash Cards. To play, just enter the correct term for each definition.  Ready?  Go!"
    puts '*' * 25
  end

  def ask_question(card)
    #Question: card.question
  end

  def result
    #correct or incorrect
  end

  def goodbye
    #summary
  end

end

view = View.new
view.welcome
