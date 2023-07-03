# frozen_string_literal: true

require 'io/console'
require_relative 'ttt'

# must use parens here, see:
# https://stackoverflow.com/questions/3170553/how-can-i-clear-the-terminal-in-ruby
system('clear') || system('cls') # for portability (cls = Windows)
# puts "\e[H\e[2J"
puts "\n\tWelcome to Tic Tac Toe\n\n"

rows, cols = $stdin.winsize # requires io/console
