require 'pry'
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(10) + 1
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  first_delt = deal_card + deal_card
  display_card_total(first_delt)
  return first_delt
end

def invalid_command
  puts "Please enter a valid command"
end

def hit?(current_total)
  prompt_user
  input = get_user_input
  new_total = current_total
  if input == "h"
    new_total += deal_card
    display_card_total(new_total)
  elsif input == "s"
     new_total
  else
     invalid_command
     hit?(current_total)
  end 
  new_total
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  while total < 21 do 
    total = hit?(total)
  end 
  if total >= 21
   end_game(total)
  end
end
    
