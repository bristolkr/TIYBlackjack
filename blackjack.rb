require_relative 'cards'
require_relative 'deck'

# User Interface
class Greeting
  
  attr_reader :user

  def initialize
    puts "
...................................:............,:=?............................
..................................+,..................~?........................
..................................+....................,=+......................
..................................~........................=....................
..................................:.........................=...................
.................................+,...........................+.................
.................................=............................:?................
................................?,.............................:................
................................~..............................,+...............
...............................?:.............................,=................
...............................=.............................:+.................
...............................:............................,~..................
..............................~.............................=...................
.....................?+==~~~==,.,,,,,,,....................,+...................
.................?~,..............,,,,,,,,,,,.............,?....................
................~....................,,,,,,,,,,,.........,+.....................
...............=......................,,,,,,,,,,,,......,~......................
...............,.........................,,,,,,,,,,,....:.......................
...............:..........................,,,,,,,,,,,..,=.......................
...............+,.........=+++=:.............,,,,,,,,,.~.?......................
................=,.......=++++++=~,...........,,,,,,,,,,,,:~+...................
..................+:,...=++++++++++++~...........,,,,........,=.................
.....................?~~+++++++++++++++++:.........,,..........+................
......................~=+++++++++++++++++++,..................,+................
.....................?:+++++++++++++++++++++++=:.............,+.................
.....................?:+++++++++==========+++++++~,.........:+..................
.....................+~++++++=+??????++++++++????+~~=~~:,~+.....................
.....................=~+++++=+?????~,,,.......,,:~====~~~:~?....................
.....................==++++=+????=IIIIIII7I~...===IIIIII?=~:+...................
.....................~=++++=????+?II?..~IIII?~~=?III?==+II==:+++?...............
.....................:=++++=?????III?,.~IIIII===IIII+..~II?~::,,=...............
.....................:+++++=+???+IIIIIIIIIIII~==IIIIIIIIII?:~::::...............
.....................:++++++=???+?IIIIIIIIIII=~~?IIIIIIIII+~:=:,=...............
....................?:+++++++=+??+++???IIII~:7+~==IIIIIII+=:+...................
....................+:++++++++~=+???++++++=,:++:~~=+????=~~+....................
....................+~+++++++++++++=======+++++++=::~~:,:+......................
....................+:++++++++++++++++++++++++++++++~=..........................
....................+:++++++++++++++++++++++++++++++:+..........................
....................+:++++++++++=========+==++++++++,+..........................
....................=:++++++++==~+???+=++++=====+~:::...........................
....................=~++++++=III?III7+?IIII?IIIII:+.............................
....................=~+++++=???++????=+???I+?????:,:=+?.........................
....................=~++++=+III+?IIII=?III7+:~~:::~~:,:,,~+.....................
....................=~++++=~III=+IIII=?III7=,:::::::~~:~~:.,=...................
....................=~+++++~=++~=????~+????~,:::::::::~~::,::...................
....................=~++++++==?=?IIII=IIIII+IIII:~~:,,::~~=:+...................
....................=~++++++++~:=+???~?????=????::...+~:,::=....................
....................+~++++++++++++++++++++++++++=,?.............................
.....................=~=++++++++++++++++++++++++=,?.............................
........................?=~:~~==+++++++++++===::~+..............................
...........................?+=~:::~~~~~~~~:~~=+?................................

"
    puts "

@@@@@@      @@        @@@@@@@@@   @@@@@@@@@   @@      @@         @@   @@@@@@@@@   @@@@@@@@@@   @@     @@
@@@@@@@@    @@        @@     @@   @@@@@@@@@   @@     @@          @@   @@     @@   @@@@@@@@@@   @@    @@
@@     @@   @@        @@     @@   @@          @@    @@           @@   @@     @@   @@           @@   @@
@@     @@   @@        @@     @@   @@          @@  @@             @@   @@     @@   @@           @@  @@
@@@@@@@     @@        @@     @@   @@          @@@@               @@   @@     @@   @@           @@@@
@@@@@@@     @@        @@@@@@@@@   @@          @@  @@             @@   @@@@@@@@@   @@           @@  @@
@@     @@   @@        @@     @@   @@          @@   @@            @@   @@     @@   @@           @@   @@
@@     @@   @@        @@     @@   @@          @@    @@           @@   @@     @@   @@           @@    @@
@@@@@@@     @@@@@@@   @@     @@   @@@@@@@@@   @@     @@   @@     @@   @@     @@   @@@@@@@@@@   @@     @@
@@@@@       @@@@@@@   @@     @@   @@@@@@@@@   @@      @@   @@@@@@@@   @@     @@   @@@@@@@@@@   @@      @@



"
    puts "I’ll build by own theme park. With black jack, and hookers. In fact, forget the park! Welcome to Blackjack! What's your name? "
    @user = gets.chomp.capitalize

    puts "Great! #{@user}, do you need to look at the rules (Y/N)? "
    rules = gets.chomp.upcase

    if rules == "Y"
      puts "

Blackjack, also called 21, is a card game of probability. 
The goal is to reach a face-value total close or equal to 21 without going over (bust).
    
Blackjack is an Ace plus a Face (K, Q, J) or 10 card.

Aces are high -- they have a value of 11.

Both you and the Dealer will receive an initial deal of two cards.
    
If the Dealer receives Blackjack, you lose.
If you receive Blackjack, you win.
If you both receive Blackjack, the result is a draw and the game ends in a draw.

If nobody receives Blackjack:
You must decide to keep your current cards (stay), or draw another (hit) until you reach 21 or bust.
After your cards have been dealt, it is the Dealer's turn.
The Dealer MUST hit on 15 and stay on 16.
The player with the highest face-value total without going bust wins.
If the Dealer and player tie, the result is a draw.

Let's play, #{@user}!
"
    elsif rules == "N"
      puts "Thanks, #{@user}. Let's begin.
      "
    end
  end
end

class Hand
 
  attr_accessor :player_hand, :dealer_hand, :player_points, :dealer_points

  def initialize
    @player_hand = []
    @dealer_hand = []

    @deck_of_cards = Deck.new
  end

  def deal_initial
    2.times do
      @player_hand.push(@deck_of_cards.draw)
      @dealer_hand.push(@deck_of_cards.draw)
    end
  end

  def player_hand_points
    @player_points = 0
    @player_hand.each do |card|
      @player_points += card.value
    end
    @player_points
  end

  def dealer_hand_points
    @dealer_points = 0
    @dealer_hand.each do |card|
      @dealer_points += card.value
    end
    @dealer_points
  end
end

greeting = Greeting.new

hand = Hand.new

hand.deal_initial

puts "#{greeting.user}, your cards are:"
  hand.player_hand.each { |card| puts card.to_s }

puts "
My face-up card is: " + hand.dealer_hand.first.to_s

puts "
Your total is: #{hand.player_hand_points.to_s}"


class Game

  attr_accessor :player_points, :dealer_points, :winner, :loser, :draw

  def initialize 
    
    winner = nil
    loser = nil
    draw = nil

  end

  def deal_player
    hand.player_hand.push(@deck_of_cards.draw)
  end

  def deal_dealer
    hand.dealer_hand.push(@deck_of_cards.draw)
  end

  def play
    if hand.player_hand_points.player_points == 21
      puts "I have a busted ass here, and no one is kissing it. You win, #{@user}!"
    end
      
    loop do 
      if hand.player_hand_points.player_points < 21
      puts "#{@user}, would you like to stay (S) or hit (H)? "
      stay_hit = gets.chomp.upcase
        if stay_hit == "H"
          while hand.player_hand_points.player_points < 21
            game.deal_player
            puts "#{greeting.user}, your cards are:"
            hand.player_hand.each { |card| puts card.to_s }
            puts "Your total is: #{hand.player_hand_points.to_s}"
              if hand.player_hand_points.player_points > 21
              puts "You know what cheers me up? Other people’s misfortune, #{@user}. You bust."
              end
          end
        elsif stay_hit == "S"
          while hand.dealer_hand_points.dealer_points < 16
            game.deal_dealer
              if hand.dealer_hand_points.dealer_points >= 16 and hand.dealer_hand_points.dealer_points <= 21
                hand.dealer_hand.each { |card| puts card.to_s }
                winner = hand.player_hand_points.player_points > hand.dealer_hand_points.dealer_points
                loser = hand.player_hand_points.player_points < hand.dealer_hand_points.dealer_points
                draw = hand.player_hand_points.player_points == hand.dealer_hand_points.dealer_points
              end
          end
        end

    if winner 
      then puts "I have a busted ass here, and no one is kissing it. You win, #{@user}!" 
    end
    if loser 
      then puts "You know what cheers me up? Other people’s misfortune, #{@user}. You lose." 
    end
    if draw 
      then puts "We tied, #{@user}! Man, this is fun on a bun!" 
    end
    
  end
end


game = Game.new

game.play
