require_relative 'cards.rb'
require_relative 'deck.rb'

# User Interface
class Greeting
  
  attr_reader :user
  def initialize
    @user = nil
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
    puts "Welcome to Blackjack! What is your name? "
      @user = gets.chomp.capitalize!

    puts "Great! #{@user}, do you need to look at the rules (Y/N)? "
      rules = gets.chomp.upcase!
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
greeting = Greeting.new


# set ace value and run dependency, also, do this later when you're not sleep-deprived.
# puts "Would you like Aces to be high? (Y/N)? "
#   @ace_high = gets.chomp
#   if @ace_high = Y
#     else 
#   end

class Hand
 
  attr_accessor :player_hand, :dealer_hand, :player_points, :dealer_points


  def initialize
    @player_hand   = []
    @dealer_hand   = []

    @deck_of_cards = Deck.new
  end

  def deal
    2.times do
      @dealer_hand << @deck_of_cards.draw
      @player_hand << @deck_of_cards.draw
    end
  end

  # def draw
  #   @player_card1 = @deck_of_cards.draw
  #   @player_card2 = @deck_of_cards.draw
  #   @dealer_card1 = @deck_of_cards.draw
  #   @dealer_card2 = @deck_of_cards.draw

  #   @player1_total = @player_card1.value + @player_card2.value
  #   @dealer_total  = @dealer_card1.value + @dealer_card2.value 
  # end

  def player_hand_points
    @player_points = 0
    @player_hand.each do |card|
      @points += card.value
    end
  end

    def dealer_hand_points
    @dealer_points = 0
    @dealer_hand.each do |card|
      @dealer_points += card.value
    end
  end
end

hand = Hand.new

puts "#{greeting.user}, your cards are #{hand.player_hand.inspect}. 

My face-up card is #{hand.dealer_hand.inspect}.
"

puts "Your total is: #{hand.player_points}

"
# class Game

#   attr_accessor :player_points, :dealer_points, :win, :lose, :draw

#   def initialize 
#     @win  = 0
#     @lose = 0
#     @draw = 0
#   end

#   def play
#     if @player_points == 21
#         @win += 1
#         puts "Congratulation, a winner is you, #{@user}! Your record is #{@win} wins, #{@lose} losses, #{@draw} draws. Would you like to play again (Y/N)? "
#         restart = gets.chomp.upcase!
#           if restart == "Y"
#             #restart game
#           elsif restart == "N"
#             puts "Bite my shiny metal ass! Bye!"
#           end
#       end
#   end

#       # until @player_hand >= 21 do
#       #   puts "#{@user}, would you like to stay (S) or hit (H)? "
#       #   stay_hit = gets.chomp.upcase!
          
#       #     if stay_hit == "H"

#       # end

# end
# game = Game.new


# record choice
# deliver random card
# check win/loss/draw conditionals
# remove dealt cards from the deck
# loop s/h until player stays, reaches 21, or busts
# cpu then takes turn
# cpu must stay on 16
# if cpu wins, display @lose
# if cpu busts display @win
# if cpu and player tie, display @draw


# puts "Sorry, #{@user}. You lose. Your record is #{@win} wins, #{@lose} losses, #{@draw} draws. Would you like to play again (Y/N)? "

# puts "Congratulation, a winner is you, #{@user}! Your record is #{@win} wins, #{@lose} losses, #{@draw} draws. Would you like to play again (Y/N)? "

# puts "We tied, #{@user}! Your record is #{@win} wins, #{@lose} losses, #{@draw} draws. Would you like to play again (Y/N)? "