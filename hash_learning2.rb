# Group the array of hashes below into a hash,
# where each key of the hash is a sport,
# and each value of the hash is a list of names of people who play that sport.

players = [
  { :name => "Sam", :sport => "tennis" },
  { :name => "Mary", :sport => "squash" },
  { :name => "Ed", :sport => "tennis" },
  { :name => "Mark", :sport => "football" }
  ]

# #
# # by_sport = []
# # players.each do |hash|
# #   by_sport = hash.invert
# # end
# #
# # puts by_sport
#
# # 1. Set up a new hash "sorted_by_sport"
# sorted_by_sport = {}
#
# # 2. Set a loop to go through players
#
# players.each do |player_under_consideration|
#   sport = player_under_consideration[:sport]
#   name = player_under_consideration[:name]
#   if sorted_by_sport[sport] == nil
#     sorted_by_sport[sport] = [name] # #here key is sorted_by_sport[sport] that is tennis in 1st loop => "Sam" that is a name from 1st loop and it is added to sorted_by_sport
#   else
#     sorted_by_sport[sport].push(name)
#   end
# end
#
# p sorted_by_sport

# 3. Name the sport each player plays, using a variable
# For each player that is the player_under_consideration,
# take a note of the sport the play.

# 4. Set a key on sorted_by_sport if there isn't one already
# 5. Push the player name into the key on sorted_by_sport if the key already exists
# Else, if sport DOES exist as a key on the hash, push the player_under_consideration's' name into the array that already exists. Then go to the next player.

# 6. Refactor

players_by_sport = {}

players.each do |player|
  sport = player[:sport]
  name  = player[:name]

  if players_by_sport[sport] == nil
    players_by_sport[sport] = [name]
  else
    players_by_sport[sport].push(name)
  end
end

p players_by_sport
