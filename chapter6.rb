# review_file = File.open("reviews.txt")
# lines = review_file.readlines
# puts "Line 4: #{lines[3]}"
# puts "Line 3: #{lines[2]}"
# review_file.close
#
# puts lines.length

###########################################################################

# lines = []
#
# File.open("reviews.txt") do |review_file|
#   lines = review_file.readlines
# end
#
# puts lines.length

############################  Exercise 1  #############################

# def yield_num
#   yield 4
# end
# array = [1,2,"...maybe 3??? Why not?..."]
# yield_num { |number| array << number}
# p array

############################  Exercise 2  #############################

# sum = 0
# [1, 2, 3].each { |number| sum += number }
# puts sum

############################  Exercise 3  #############################

# contents = [4]
# File.open("reviews.txt") do |file|
#   contents = file.readlines
# end
#
# puts contents

#######################################################################

# my_string = "I like apples, bananas, and oranges"
# puts my_string.include?("bananas")
# puts my_string.include?("and oran")
# puts my_string.include?("cats????????")

#######################  Long way  #################################

# lines = [1]
#
# File.open("reviews.txt") do |review_file|
#   lines = review_file.readlines
# end
#
# relevant_lines = []
#
# 
# lines.each do |line|
#   if line.include?("Truncated")
#     relevant_lines << line
#   end
#   end
#
# puts relevant_lines

######################  Short way  ############################

# lines = []
#
# File.open("reviews.txt") do |review_file|
#   lines = review_file.readlines
# end
#
# relevant_lines = lines.find_all { |line| line.include?("Truncated")}
#
# puts relevant_lines

####################  Doesn't work, why? - without 2nd block ##############################

# def print_block_result
#   block_result = yield
#   puts block_result
# end
#
# print_block_result { 1 + 1 }
#
# print print_block_result do
#   "I'm not the last expression, so I'm not the return value."
#   "I'm the result!"
# end
#
# print_block_result { "I hate Truncated".include?("Truncated") }

########################################################################

# def triple_block_result
#   puts 3 * yield
#   end
#
# triple_block_result {5.5}

########################################################################

# def greet
#   puts "Hello, #{yield}!"
#   end
#
# greet {"Liz"}

########################################################################

# def alert_if_true
#   if yield
#     puts "Block returned true!"
#   else
#     puts "Block returned false."
#   end
# end
#
# alert_if_true {2 + 2 == 5}
# alert_if_true {2 > 1}

########################################################################

# def make_casserole
#   puts "Preheat oven to 375 degrees"
#   ingredients = yield
#   puts "Place #{ingredients} in dish"
#   puts "Bake for 20 minutes"
# end
#
# make_casserole do
#   "noodles, celery, and tuna"
# end
#
# make_casserole do
#   "rice, broccoli......."
# end

########################################################################

# p ['a', 'b', 'c'].find_all {|item| false }

########################################################################

# array = [1, 2, 3, 4].find_all { |number| number.odd? }
# puts array