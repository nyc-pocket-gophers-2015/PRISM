class Deck

  attr_reader :topic, :cards
  def initialize(args = {})
    @topic = args[:topic]
    @cards = args[:cards]
  end

end