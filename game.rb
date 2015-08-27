#each card has a value of 2 through 11 - aces?
#winner cards are <=21

class Card

  def initialize(suit, value)
    @suit                      # => nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
    @value                     # => nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
  end

  def value
    @value
  end

  def suit
    @suit
  end

  def to_s
    "You have a #{@value} of #{@suit}"
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
      new_card = Card.new(suit, value)           # => #<Card:0x007f847a990538>, #<Card:0x007f847a990060>, #<Card:0x007f847a98bc68>, #<Card:0x007f847a98b8a8>, #<Card:0x007f847a98b420>, #<Card:0x007f847a98af48>, #<Card:0x007f847a98a9d0>, #<Card:0x007f847a98a390>, #<Card:0x007f847a989dc8>, #<Card:0x007f847a983ba8>, #<Card:0x007f847a983388>, #<Card:0x007f847a982bb8>, #<Card:0x007f847a9823c0>, #<Card:0x007f847a981b28>, #<Card:0x007f847a981290>, #<Card:0x007f847a9809a8>, #<Card:0x007f847a980098>, #...
      @fulldeck << Card.new(suit, value)         # => [#<Card:0x007f847a990240>], [#<Card:0x007f847a990240>, #<Card:0x007f847a98bee8>], [#<Card:0x007f847a990240>, #<Card:0x007f847a98bee8>, #<Card:0x007f847a98bb28>], [#<Card:0x007f847a990240>, #<Card:0x007f847a98bee8>, #<Card:0x007f847a98bb28>, #<Card:0x007f847a98b6f0>], [#<Card:0x007f847a990240>, #<Card:0x007f847a98bee8>, #<Card:0x007f847a98bb28>, #<Card:0x007f847a98b6f0>, #<Card:0x007f847a98b290>], [#<Card:0x007f847a990240>, #<Card:0x007f847...
    end                                          # => 2..10, 2..10, 2..10, 2..10
    @fulldeck << Card.new(suit, "J")             # => [#<Card:0x007f847a990240>, #<Card:0x007f847a98bee8>, #<Card:0x007f847a98bb28>, #<Card:0x007f847a98b6f0>, #<Card:0x007f847a98b290>, #<Card:0x007f847a98adb8>, #<Card:0x007f847a98a868>, #<Card:0x007f847a98a1d8>, #<Card:0x007f847a989c88>, #<Card:0x007f847a989698>], [#<Card:0x007f847a990240>, #<Card:0x007f847a98bee8>, #<Card:0x007f847a98bb28>, #<Card:0x007f847a98b6f0>, #<Card:0x007f847a98b290>, #<Card:0x007f847a98adb8>, #<Card:0x007f847a98a868>...
    @fulldeck << Card.new(suit, "Q")             # => [#<Card:0x007f847a990240>, #<Card:0x007f847a98bee8>, #<Card:0x007f847a98bb28>, #<Card:0x007f847a98b6f0>, #<Card:0x007f847a98b290>, #<Card:0x007f847a98adb8>, #<Card:0x007f847a98a868>, #<Card:0x007f847a98a1d8>, #<Card:0x007f847a989c88>, #<Card:0x007f847a989698>, #<Card:0x007f847a9890d0>], [#<Card:0x007f847a990240>, #<Card:0x007f847a98bee8>, #<Card:0x007f847a98bb28>, #<Card:0x007f847a98b6f0>, #<Card:0x007f847a98b290>, #<Card:0x007f847a98adb8>...
    @fulldeck << Card.new(suit, "K")             # => [#<Card:0x007f847a990240>, #<Card:0x007f847a98bee8>, #<Card:0x007f847a98bb28>, #<Card:0x007f847a98b6f0>, #<Card:0x007f847a98b290>, #<Card:0x007f847a98adb8>, #<Card:0x007f847a98a868>, #<Card:0x007f847a98a1d8>, #<Card:0x007f847a989c88>, #<Card:0x007f847a989698>, #<Card:0x007f847a9890d0>, #<Card:0x007f847a9889a0>], [#<Card:0x007f847a990240>, #<Card:0x007f847a98bee8>, #<Card:0x007f847a98bb28>, #<Card:0x007f847a98b6f0>, #<Card:0x007f847a98b290>...
    @fulldeck << Card.new(suit, "A")             # => [#<Card:0x007f847a990240>, #<Card:0x007f847a98bee8>, #<Card:0x007f847a98bb28>, #<Card:0x007f847a98b6f0>, #<Card:0x007f847a98b290>, #<Card:0x007f847a98adb8>, #<Card:0x007f847a98a868>, #<Card:0x007f847a98a1d8>, #<Card:0x007f847a989c88>, #<Card:0x007f847a989698>, #<Card:0x007f847a9890d0>, #<Card:0x007f847a9889a0>, #<Card:0x007f847a988270>], [#<Card:0x007f847a990240>, #<Card:0x007f847a98bee8>, #<Card:0x007f847a98bb28>, #<Card:0x007f847a98b6f0>...
    end                                          # => [:hearts, :diamonds, :spades, :clubs]
  end

  def fulldeck
    @fulldeck
  end

  #shuffle deck every game
  def shuffle
    @fulldeck.shuffle!  # => [#<Card:0x007f847a979db0>, #<Card:0x007f847a968808>, #<Card:0x007f847a981150>, #<Card:0x007f847a98adb8>, #<Card:0x007f847a9629d0>, #<Card:0x007f847a96bd50>, #<Card:0x007f847a982258>, #<Card:0x007f847a980840>, #<Card:0x007f847a98b290>, #<Card:0x007f847a961b98>, #<Card:0x007f847a97b4d0>, #<Card:0x007f847a989698>, #<Card:0x007f847a940a38>, #<Card:0x007f847a98bee8>, #<Card:0x007f847a98a1d8>, #<Card:0x007f847a960d88>, #<Card:0x007f847a97a8a0>, #<Card:0x007f847a95bc98>,...
  end

  #deal 2 cards at first, 1 card per hit
  def deal(n)
    n.times do
    @fulldeck.pop
    end
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
deck.shuffle                 # => [#<Card:0x007f847a979db0>, #<Card:0x007f847a968808>, #<Card:0x007f847a981150>, #<Card:0x007f847a98adb8>, #<Card:0x007f847a9629d0>, #<Card:0x007f847a96bd50>, #<Card:0x007f847a982258>, #<Card:0x007f847a980840>, #<Card:0x007f847a98b290>, #<Card:0x007f847a961b98>, #<Card:0x007f847a97b4d0>, #<Card:0x007f847a989698>, #<Card:0x007f847a940a38>, #<Card:0x007f847a98bee8>, #<Card:0x007f847a98a1d8>, #<Card:0x007f847a960d88>, #<Card:0x007f847a97a8a0>, #<Card:0x007f847a95b...
puts deck.length          #check it is 52

#deal 2 card each
player_hand = cardplayer.set_card(deck.deal(2))   #return value??
dealer_hand = dealer.set_card(deck.deal(2))

#evaluate the cards, sum values
#carplayer.score = value of card1 + card 2
#dealer.score = value of card1 + card 2

puts "Would you like to (H)it or (S)tay: H/S"
#if dealer_score <16, deck.deal(1) until score > 16
#loop to ask again






