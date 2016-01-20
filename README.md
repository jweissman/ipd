# Iterated Prisoner's Dilemma

The idea is that you can engage in an IPD with another random user or bot.

# Rules

All players start with a 'pot' of 50 points and can engage in games with 1-point antes.

(If you drop below zero points, the game you are playing ends and you are given 50 points.)

The game proceeds by turns where each player chooses an action simultaneously.

## The Choice

Each turn a player has two possible choices:

- The player can choose to 'cooperate' (by clicking the green checkmark), or...
- The player can choose to 'defect' (by clicking the x-mark) 

Once both "votes" are locked in, the game server computes the result and adjusts players' point totals accordingly.

## Payoff Matrix

The payoff matrix is always the same (although the stakes increase exponentially the longer you play):

                 |  P1 Coop   | Coop P1 Defect
      ———————————+————————————+——————————————
      P2 Coop    | P1+2,P2+2  |  P1+1,P2-1
      P2 Defect  | P1-1,P2-1  |  P1-2,P2-2
      
      cooperate —  if both choose, each players get +2
      defect    —  if both choose, both players get -2; 
                   but if just one, +1 to defector and -1 to cooperators

## Payoff Multipliers
  
The game background will change based on the stakes (multiplier of the payoff matrix):

  1x - dark grey
  5x - dark blue
  10x - light blue
  25x - light yellow
  100x - light green
  200x - light purple
  500x - light red
  1000x - light orange
  5000x - copper
  10000x - silver
  100,000x - gold
  1,000,000x - diamond (light grey)

## UI

The following information is displayed as the game proceeds:

  - Your point total
  - Your running point payoff this game
  - Your average point payoff per turn this game
  - Your average point payoff per turn over all games
  - Cooperation/defection ratio
  - Your opponent's point total
  - Whether your opponent is a robot
  - The number of games your opponent has played

## API

Another thought here is to expose an API where people can write bots to play IPD. 

Users would have to opt-in to playing against a bot. Bots will be rate-limited: real users will be fairly round-robined to available bots in the waiting pool. If a bot doesn't respond to its webhook in a timely fashion it will probably be ejected.

On the other hand, bots playing each other should be really open and there should maybe even be a separate tourney just for them.
