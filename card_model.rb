class Card

  attr_reader :question, :answer
  attr_accessor :tries
  def initialize(args = {})
    @question = args[:question]
    @answer = args[:answer]
    @tries = args[:tries] || 0
  end

  def to_s
    # this is always a string already, no?
    @question
  end

end
