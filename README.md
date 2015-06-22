# TIYBlackjack

Week 1 - Assignment #4

Create a Blackjack console game.

Learning Objectives

After completing this assignment, you should be able to:

Use control-flow (having the computer make decisions).
Create a user interface.
Use data-flow (your deck is a unique set of resources).
Performance Objectives

After completing this assignment, you be able to effectively use:

Classes
Arrays
Console / Terminal
Deliverables

A repo containing at least:

 blackjack.rb -- your game. This is file you'll run with ruby blackjack.rb.
 card.rb -- your Card class
 deck.rb -- your Deck class

Requirements

 Don't consider Aces as possible 1s they are always 11s.
 This is a two hand game (dealer and player).
 No splitting or any funny business like that.
 One deck in the game.
 52 card deck.
 No "wild" cards.
 Create a new deck every game.
 Deck must be shuffled every game.
 No betting.
 Must have suits (Ace of Diamonds).
 Dealer hits if less than 16, otherwise dealer stays.
 Player inputs if they want to stay or hit.
 Get as close to 21 without going over.
 Player beat the dealer to win.
 You can see 1 of dealers cards, while you are playing.

Bonus

 If you get blackjack (21 with two cards), you win automagically.
 If the dealer gets blackjack, you lose.
 Add the idea of tracking your progress as you play over time.
 Let the player choose if an Ace is a 1 or an 11


Plan:
  card.rb (Card class) (use arrays)
    - use to designate each of the 52 cards 
    - must use suits (13 cards per suit)
    - must use face cards 

  deck.rb (Deck class) (use hashes of arrays)
    - use to organize Card class into a deck (inherited >> Card)
      
  blackjack.rb (Main game file: inherit Deck class, declare methods, create UI)
    - must be able to randomize deck (does this method exist?)
    - must be able to re-initialize deck after each game
    - must be able to receive player input
    - must be able to track and display both hands of cards
    - must be able to obscure the 2nd of the dealer's cards
    - must obey by the blackjack rules:
      - to win: 
        - player blackjack
        - higher hand without going over 21
        - dealer busts
      - to lose: 
        - dealer blackjack (unless player also blackjack)
        - dealer has higher hand without going over 21
        - player busts
      - to draw:
        - player and dealer both receive blackjack on initial deal
        - dealer holds on 16, player also opts to hold on 16
      - initial deal: two cards
        - if initial deal does not bust or blackjack, player and dealer take turns deciding to stay or hit
      - loop re-eval until win/loss conditionals met
      - player declares ace as 1 or 11 (if cannot make the either/or work, at least make aces high work)
      - tracking progress (W/L/D)
      - dealer hits below 16

