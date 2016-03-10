#each card has a value of 2 through 11
#winner cards are <=21

class Card

  attr_accessor :suit, :value

  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def to_s
    "You have a value: #{@value} of card: #{@suit}"
  end
end

class Player
  #2 players: dealer and cardplayer
  # each have a card, a score, an identifier
  attr_accessor :score, :card_in_hand


  def initialize
    @score = 0
    @card_in_hand
  end


  def set_card(new_card)    #assigns the dealt card to card_in_hand
    @card_in_hand = new_card
  end
end

class Deck
  # create deck of 52 cards with 4 suits, every game
  def initialize
  @fulldeck = []
  #add value of face cards here, all are currently identical
  #if JQ or K, set_face_value = 10

  suits = [:hearts, :diamonds, :spades, :clubs]
  suits.each do |suit|
    (2..10).each do |value|
      new_card = Card.new(suit, value)
      @fulldeck << new_card
    end
    @fulldeck << Card.new(suit, "J")
    @fulldeck << Card.new(suit, "Q")
    @fulldeck << Card.new(suit, "K")
    @fulldeck << Card.new(suit, "A")
    @fulldeck
    end
  end

  def fulldeck
    @fulldeck
  end

  #shuffle deck every game
  def shuffle
    @fulldeck.shuffle!
  end

  #deal 2 cards at first, 1 card per hit
  def deal(n)
    @dealt = []
    n.times do
      @dealt << @fulldeck.pop
    end
    @dealt
  end

  #track the balance of cards in the deck
  def length
    @fulldeck.length  # => 52
  end

end

puts "Welcome to Blackjack"  # => nil
dealer = Player.new       #new instance of Player
cardplayer = Player.new   #new instance of Player
deck = Deck.new           #new instance of Deck
deck.shuffle                 # => [#<Card:0x007fcc0416a800>, #<Card:0x007fcc04141c20>, #<Card:0x007fcc0416b368>, #<Card:0x007fcc050159e0>, #<Card:0x007fcc041530b0>, #<Card:0x007fcc05017290>, #<Card:0x007fcc04172b90>, #<Card:0x007fcc0500d290>, #<Card:0x007fcc05016e30>, #<Card:0x007fcc0414bc20>, #<Card:0x007fcc05015490>, #<Card:0x007fcc05016480>, #<Card:0x007fcc041597d0>, #<Card:0x007fcc0500fb30>, #<Card:0x007fcc050169d0>, #<Card:0x007fcc041605a8>, #<Card:0x007fcc041613b8>, #<Card:0x007fcc05014...
puts deck.length          #check it is 52

deck.fulldeck.each do |card|
  puts "#{card.value} of #{card.suit}"
end
#deal 2 card each
player_hand = cardplayer.set_card(deck.deal(2).inspect)   #return value??
dealer_hand = dealer.set_card(deck.deal(2).inspect)


#evaluate the cards, sum values
#carplayer.score = value of card1 + card 2
#dealer.score = value of card1 + card 2

puts "Would you like to (H)it or (S)tay: H/S"
puts "dealer: #{dealer_hand}"
puts "player: #{player_hand}"

#if dealer_score <16, deck.deal(1) until score > 16
#loop to ask again
