#each card has a value of 2 through 11 - aces?
#winner cards are <=21

class Card

  def initialize(suit, value)
    @suit
    @value
  end

  def value
    @value.to_i
  end

  def suit
    @suit
  end

  def to_s
    "You have a value: #{@value} of card: #{@suit}"
  end
end

class Player
  #2 players: dealer and cardplayer
  # each have a card, a score, an identifier
  # cardplayer instance
  # dealer instance

  # player, dealer scores starts at zero
  def initialize
    @score = 0    # => 0, 0
  end

  def card_in_hand
    @card_in_hand
  end

  def set_card(new_card)    #assigns the dealt card to card_in_hand
    @card_in_hand = new_card
  end

  def score
    @score
  end

end

class Deck
  # create deck of 52 cards with 4 suits, every game

  def initialize
  @fulldeck = []                                 # => []
  #add value of face cards here, all are currently identical
  suits = [:hearts, :diamonds, :spades, :clubs]  # => [:hearts, :diamonds, :spades, :clubs]
  suits.each do |suit|                           # => [:hearts, :diamonds, :spades, :clubs]
    (2..10).each do |value|                      # => 2..10, 2..10, 2..10, 2..10
      new_card = Card.new(suit, value)           # => #<Card:0x007fcc05017ce0>, #<Card:0x007fcc050177e0>, #<Card:0x007fcc050173f8>, #<Card:0x007fcc05016fc0>, #<Card:0x007fcc05016b10>, #<Card:0x007fcc05016688>, #<Card:0x007fcc05016098>, #<Card:0x007fcc05015b48>, #<Card:0x007fcc050155d0>, #<Card:0x007fcc0500f388>, #<Card:0x007fcc0500ec08>, #<Card:0x007fcc0500e460>, #<Card:0x007fcc0500dc40>, #<Card:0x007fcc0500d3d0>, #<Card:0x007fcc0500cb38>, #<Card:0x007fcc0500c278>, #<Card:0x007fcc04173900>, #...
      @fulldeck << new_card        # => [#<Card:0x007fcc05017a10>], [#<Card:0x007fcc05017a10>, #<Card:0x007fcc05017600>], [#<Card:0x007fcc05017a10>, #<Card:0x007fcc05017600>, #<Card:0x007fcc05017290>], [#<Card:0x007fcc05017a10>, #<Card:0x007fcc05017600>, #<Card:0x007fcc05017290>, #<Card:0x007fcc05016e30>], [#<Card:0x007fcc05017a10>, #<Card:0x007fcc05017600>, #<Card:0x007fcc05017290>, #<Card:0x007fcc05016e30>, #<Card:0x007fcc050169d0>], [#<Card:0x007fcc05017a10>, #<Card:0x007fcc0...
    end                                          # => 2..10, 2..10, 2..10, 2..10
    @fulldeck << Card.new(suit, "J")             # => [#<Card:0x007fcc05017a10>, #<Card:0x007fcc05017600>, #<Card:0x007fcc05017290>, #<Card:0x007fcc05016e30>, #<Card:0x007fcc050169d0>, #<Card:0x007fcc05016480>, #<Card:0x007fcc05015ee0>, #<Card:0x007fcc050159e0>, #<Card:0x007fcc05015490>, #<Card:0x007fcc05014d88>], [#<Card:0x007fcc05017a10>, #<Card:0x007fcc05017600>, #<Card:0x007fcc05017290>, #<Card:0x007fcc05016e30>, #<Card:0x007fcc050169d0>, #<Card:0x007fcc05016480>, #<Card:0x007fcc05015ee0>...
    @fulldeck << Card.new(suit, "Q")             # => [#<Card:0x007fcc05017a10>, #<Card:0x007fcc05017600>, #<Card:0x007fcc05017290>, #<Card:0x007fcc05016e30>, #<Card:0x007fcc050169d0>, #<Card:0x007fcc05016480>, #<Card:0x007fcc05015ee0>, #<Card:0x007fcc050159e0>, #<Card:0x007fcc05015490>, #<Card:0x007fcc05014d88>, #<Card:0x007fcc050146a8>], [#<Card:0x007fcc05017a10>, #<Card:0x007fcc05017600>, #<Card:0x007fcc05017290>, #<Card:0x007fcc05016e30>, #<Card:0x007fcc050169d0>, #<Card:0x007fcc05016480>...
    @fulldeck << Card.new(suit, "K")             # => [#<Card:0x007fcc05017a10>, #<Card:0x007fcc05017600>, #<Card:0x007fcc05017290>, #<Card:0x007fcc05016e30>, #<Card:0x007fcc050169d0>, #<Card:0x007fcc05016480>, #<Card:0x007fcc05015ee0>, #<Card:0x007fcc050159e0>, #<Card:0x007fcc05015490>, #<Card:0x007fcc05014d88>, #<Card:0x007fcc050146a8>, #<Card:0x007fcc050140e0>], [#<Card:0x007fcc05017a10>, #<Card:0x007fcc05017600>, #<Card:0x007fcc05017290>, #<Card:0x007fcc05016e30>, #<Card:0x007fcc050169d0>...
    @fulldeck << Card.new(suit, "A")
    @fulldeck          # => [#<Card:0x007fcc05017a10>, #<Card:0x007fcc05017600>, #<Card:0x007fcc05017290>, #<Card:0x007fcc05016e30>, #<Card:0x007fcc050169d0>, #<Card:0x007fcc05016480>, #<Card:0x007fcc05015ee0>, #<Card:0x007fcc050159e0>, #<Card:0x007fcc05015490>, #<Card:0x007fcc05014d88>, #<Card:0x007fcc050146a8>, #<Card:0x007fcc050140e0>, #<Card:0x007fcc0500fb30>], [#<Card:0x007fcc05017a10>, #<Card:0x007fcc05017600>, #<Card:0x007fcc05017290>, #<Card:0x007fcc05016e30>...
    end                                          # => [:hearts, :diamonds, :spades, :clubs]
  end

  def fulldeck
    @fulldeck   # => [#<Card:0x007fcc0416a800>, #<Card:0x007fcc04141c20>, #<Card:0x007fcc0416b368>, #<Card:0x007fcc050159e0>, #<Card:0x007fcc041530b0>, #<Card:0x007fcc05017290>, #<Card:0x007fcc04172b90>, #<Card:0x007fcc0500d290>, #<Card:0x007fcc05016e30>, #<Card:0x007fcc0414bc20>, #<Card:0x007fcc05015490>, #<Card:0x007fcc05016480>, #<Card:0x007fcc041597d0>, #<Card:0x007fcc0500fb30>, #<Card:0x007fcc050169d0>, #<Card:0x007fcc041605a8>, #<Card:0x007fcc041613b8>, #<Card:0x007fcc050146a8>, #<Card:...
  end

  #shuffle deck every game
  def shuffle
    @fulldeck.shuffle!  # => [#<Card:0x007fcc0416a800>, #<Card:0x007fcc04141c20>, #<Card:0x007fcc0416b368>, #<Card:0x007fcc050159e0>, #<Card:0x007fcc041530b0>, #<Card:0x007fcc05017290>, #<Card:0x007fcc04172b90>, #<Card:0x007fcc0500d290>, #<Card:0x007fcc05016e30>, #<Card:0x007fcc0414bc20>, #<Card:0x007fcc05015490>, #<Card:0x007fcc05016480>, #<Card:0x007fcc041597d0>, #<Card:0x007fcc0500fb30>, #<Card:0x007fcc050169d0>, #<Card:0x007fcc041605a8>, #<Card:0x007fcc041613b8>, #<Card:0x007fcc050146a8>,...
  end

  #deal 2 cards at first, 1 card per hit
  def deal(n)
    n.times do
    @dealt = @fulldeck.pop
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

deck.fulldeck.each do |card|                       # => [#<Card:0x007fcc0416a800>, #<Card:0x007fcc04141c20>, #<Card:0x007fcc0416b368>, #<Card:0x007fcc050159e0>, #<Card:0x007fcc041530b0>, #<Card:0x007fcc05017290>, #<Card:0x007fcc04172b90>, #<Card:0x007fcc0500d290>, #<Card:0x007fcc05016e30>, #<Card:0x007fcc0414bc20>, #<Card:0x007fcc05015490>, #<Card:0x007fcc05016480>, #<Card:0x007fcc041597d0>, #<Card:0x007fcc0500fb30>, #<Card:0x007fcc050169d0>, #<Card:0x007fcc041605a8>, #<Card:0x007fcc041613b8>...
  puts "#{card.value}"                             # => nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
end                                                # => [#<Card:0x007fcc0416a800>, #<Card:0x007fcc04141c20>, #<Card:0x007fcc0416b368>, #<Card:0x007fcc050159e0>, #<Card:0x007fcc041530b0>, #<Card:0x007fcc05017290>, #<Card:0x007fcc04172b90>, #<Card:0x007fcc0500d290>, #<Card:0x007fcc05016e30>, #<Card:0x007fcc0414bc20>, #<Card:0x007fcc05015490>, #<Card:0x007fcc05016480>, #<Card:0x007fcc041597d0>, #<Card:0x007fcc0500fb30>, #<Card:0x007fcc050169d0>, #<Card:0x007fcc041605a8>, #<Card:0x007fcc041613b8>...
#deal 2 card each
player_hand = cardplayer.set_card(deck.deal(2))   #return value??
dealer_hand = dealer.set_card(deck.deal(2).value)

#evaluate the cards, sum values
#carplayer.score = value of card1 + card 2
#dealer.score = value of card1 + card 2

puts "Would you like to (H)it or (S)tay: H/S"
puts "dealer: #{dealer_hand}"
puts "player: #{player_hand}"

#if dealer_score <16, deck.deal(1) until score > 16
#loop to ask again
