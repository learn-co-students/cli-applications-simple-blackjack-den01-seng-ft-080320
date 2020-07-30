require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  rand(1..11)
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
  number
end
#binding.pry

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(number)
  prompt_user
  user_input = get_user_input
  if user_input == 'h'
    number += deal_card
  elsif user_input == 's'
    number
  else 
    invalid_command
    hit?(number)
  end
end

def invalid_command
    puts "Please enter a valid command"
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  players_hand = initial_round
  while players_hand < 21
    players_hand = hit?(players_hand)
    players_hand = display_card_total(players_hand)
  end
  end_game(players_hand)
end
    
