# frozen_string_literal: true

require "io/console"
require_relative "string"
require_relative "player"

def clear_screen
  system('clear') || system('cls') # for portability (cls = Windows)
end
puts "\n\tWelcome to my Tic Tac Toe game!\n\n".yellow
rows, cols = $stdin.winsize
(rows - 5).times { puts "" }
sleep 2
