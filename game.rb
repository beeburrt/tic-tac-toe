# # frozen_string_literal: true

class String
  # def red; colorize(self, "\e[1m\e[31m"); end
  # def green; colorize(self, "\e[1m\e[32m"); end
  # def dark_green; colorize(self, "\e[32m"); end
  # def yellow; colorize(self, "\e[1m\e[33m"); end
  # def blue; colorize(self, "\e[1m\e[34m"); end
  # def dark_blue; colorize(self, "\e[34m"); end
  # def purple; colorize(self, "\e[35m"); end
  # def dark_purple; colorize(self, "\e[1;35m"); end
  #   def cyan; colorize(self, "\e[1;36m"); end
  def dark_cyan; colorize(self, "\e[36m"); end
  #   def pure; colorize(self, "\e[0m\e[28m"); end
  def bold; colorize(self, "\e[1m"); end
  def colorize(text, color_code) "#{color_code}#{text}\e[0m" end

  #   def mv_up(n=1)
  #     cursor(self, "\033[#{n}A")
  #   end

  #   def mv_down(n=1)
  #     cursor(self, "\033[#{n}B")
  #   end

  #   def mv_fw(n=1)
  #     cursor(self, "\033[#{n}C")
  #   end

  #   def mv_bw(n=1)
  #     cursor(self, "\033[#{n}D")
  #   end

  def cls_upline
    cursor(self, "\e[K")
  end

  #   def cls
  #     # cursor(self, "\033[2J")
  #     cursor(self, "\e[H\e[2J")
  #   end

  #   def save_position
  #     cursor(self, "\033[s")
  #   end

  #   def restore_position
  #     cursor(self, "\033[u")
  #   end

  def cursor(text, position)
    "\r#{position}#{text}"
  end
end

puts "RubyFu".red
puts "RubyFu".green
puts "RubyFu".yellow.bold

# (1..3).map do |num|
#   print "\rNumber: #{num}"
#   sleep 0.7
#   # Level 2
#   ('a'..'c').map do |char|
#     print "Characters: #{char}".mv_down
#     sleep 0.5
#     # Level 3
#     ('A'..'C').map do |char1|
#       print "Capital: #{char1}".mv_down
#       sleep 0.2
#       print "".mv_up
#     end
#     print "".mv_up
#   end
#   sleep 0.7
# end
# print "".mv_down 3

# (1..10).each do |percent|
#   print "#{percent * 10}% complete\r"
#   sleep(0.5)
#   print # Delete current line
# end
# puts "Done!"

# (1..5).to_a.reverse.each do |c|
#   print "\rI'll exit after #{c} second(s)"
#   print "\e[K"
#   sleep 1
# end

# (1..5).to_a.reverse.each do |c|
#   print "I'll exit after #{c} second".cls_upline
#   sleep 1
# end
# puts
