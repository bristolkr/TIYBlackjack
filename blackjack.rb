# blackjack.rb (Main game file: inherit Deck class, declare methods, create UI)
#     - must be able to randomize deck (does this method exist?)
#     - must be able to re-initialize deck after each game
#     - must be able to receive player input
#     - must be able to track and display both hands of cards
#     - must be able to obscure the 2nd of the dealer's cards
#     - must obey by the blackjack rules:
#       - to win: 
#         - player blackjack
#         - higher hand without going over 21
#         - dealer busts
#       - to lose: 
#         - dealer blackjack (unless player also blackjack)
#         - dealer has higher hand without going over 21
#         - player busts
#       - to draw:
#         - player and dealer both receive blackjack on initial deal
#         - dealer holds on 16, player also opts to hold on 16
#       - initial deal: two cards
#         - if initial deal does not bust or blackjack, player and dealer take turns deciding to stay or hit
#       - loop re-eval until win/loss conditionals met
#       - player declares ace as 1 or 11 (if cannot make the either/or work, at least make aces high work)
#       - tracking progress (W/L/D)
#       - dealer hits below 16

# # -- User Interface --
puts "@@@@@@      @@        @@@@@@@@@   @@@@@@@@@   @@      @@         @@   @@@@@@@@@   @@@@@@@@@@   @@     @@
@@@@@@@@    @@        @@     @@   @@@@@@@@@   @@     @@          @@   @@     @@   @@@@@@@@@@   @@    @@
@@     @@   @@        @@     @@   @@          @@    @@           @@   @@     @@   @@           @@   @@
@@     @@   @@        @@     @@   @@          @@  @@             @@   @@     @@   @@           @@  @@
@@@@@@@     @@        @@     @@   @@          @@@@               @@   @@     @@   @@           @@@@
@@@@@@@     @@        @@@@@@@@@   @@          @@  @@             @@   @@@@@@@@@   @@           @@  @@
@@     @@   @@        @@     @@   @@          @@   @@            @@   @@     @@   @@           @@   @@
@@     @@   @@        @@     @@   @@          @@    @@           @@   @@     @@   @@           @@    @@
@@@@@@@     @@@@@@@   @@     @@   @@@@@@@@@   @@     @@   @@     @@   @@     @@   @@@@@@@@@@   @@     @@
@@@@@       @@@@@@@   @@     @@   @@@@@@@@@   @@      @@   @@@@@@@@   @@     @@   @@@@@@@@@@   @@      @@"
# puts "Welcome to Blackjack! What is your name? "
#   @user = gets.chomp

# puts "Great! #{@user}, do you need to look at the rules (Y/N)? "
#   rule_display = gets.chomp
#   if rule_display = Y
    
puts "Blackjack, or 21, is a card game of probability. 
The goal is to reach a face-value total close or equal to 21 without going over (bust).
    
Blackjack is an Ace plus a Face (K, Q, J) or 10 card.

Both you and the dealer will receive an initial deal of two cards.
    
If the dealer receives Blackjack, you lose.
If you receive Blackjack, you win.
If you both receive Blackjack, the result is a draw and the game ends in a draw.

If nobody receives Blackjack:
You must decide to keep your current cards (stay), or draw another (hit) until you reach 21 or bust.
The dealer MUST hit on 15 and stay on 16.
The player with the highest face-value total without going bust wins.
If the dealer and player tie, the result is a draw."



# puts "Would you like Aces to be high? (Y/N)? "
#   @ace_high = gets.chomp
#   if @ace_high = Y
#     else 
#   end

# set ace value and run dependent script


# puts "Thanks, #{@user}. Let's begin."
#   # randomize deck
#   # display user cards
#   # display first of the dealer's two cards
#   # check instant win/loss conditional (blackjack)
#   # if no instant win, prompt user

# puts "#{@user}, would you like to stay (S) or hit (H)? "
#   # record choice
#   # deliver random card
#   # check win/loss/draw conditionals
#   # if user does not win or bust, computer decides to stay or hit
#   # if cpu wins, display @lose
#   # if cpu busts display @win
#   # if cpu holds prompt user S/H



# puts "Sorry, #{@user}. You lose. Your record is #{@win} wins, #{@lose} losses, #{@draw} draws. Would you like to play again (Y/N)? "

# puts "Congratulation, a winner is you, #{@user}! Your record is #{@win} wins, #{@lose} losses, #{@draw} draws. Would you like to play again (Y/N)? "

# puts "You tied with the dealer, #{@user}. Your record is #{@win} wins, #{@lose} losses, #{@draw} draws. Would you like to play again (Y/N)? "

# -- Game Conditionals --
# TO WIN

# TO LOSE

# TO DRAW