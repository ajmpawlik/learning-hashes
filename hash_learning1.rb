# I want a simple dictionary. I put in the word, and I get out the definition of that word.
#Here are the definitions I want:
# bear: a creature that fishes in the river for salmon.
# river: a body of water that contains salmon, and sometimes bears.
# salmon: a fish, sometimes in a river, sometimes in a bear, and sometimes in both.

dictionary = { "bear" => "a creature that fishes in the river for salmon",
"river" => "a body of water that contains salmon, and sometimes bears",
"salmon" => "a fish, sometimes in a river, sometimes in a bear, and sometimes in both"
}
# p dictionary["bear"]

# searched_word = "salmon"
#
# p dictionary[searched_word]

input = 0

while true
input = gets.chomp
  if input == "stop"
    break
  end
puts dictionary[input]
end
