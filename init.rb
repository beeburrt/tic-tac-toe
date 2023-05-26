# frozen_string_literal: true
  require "io/console"

  # must use parens here, see:
  # https://stackoverflow.com/questions/3170553/how-can-i-clear-the-terminal-in-ruby
  #system("clear") || system("cls") # for portability (cls = Windows)
  #puts "\e[H\e[2J" 
  #$stdout.clear_screen # clears the screen, same as above 2
  #puts "\n\tWelcome to Tic Tac Toe\n\n"

#   counter = 0
#   until counter == 50
#     puts " "
#     counter += 1
#   end

# puts "Enter your password: "
# password = STDIN.noecho(&:gets).chomp # noecho hides output
# puts "your password is #{password}"


puts "\e[H\e[2J"
STDOUT.flush
