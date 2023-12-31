# Top 10 Nintendo 64 games from Gamerankings

game_rankings = {
  "The Legend of Zelda: Ocarina of Time"    => 0.9754, 
  "Super Mario 64"                          => 0.9641, 
  "GoldenEye 007"                           => 0.9470, 
  "Perfect Dark"                            => 0.9455, 
  "The Legend of Zelda: Majora's Mask"      => 0.9195, 
  "1080: TenEighty Snowboarding"            => 0.8960, 
  "Conker's Bad Fur Day"                    => 0.8928, 
  "Excitebike 64"                           => 0.8907, 
  "Turok 2: Seeds of Evil"                  => 0.8896, 
  "Paper Mario"                             => 0.8881
}

# Your code goes here

avg_score = game_rankings.inject(0) { |sum, tuple| sum += tuple[1] } / game_rankings.size
# above_avg = game_rankings.select { |k, v| v > avg_score }

p avg_score # sum of hash values divided by the size of the hash

# .each do - useful way to access key-value pairs in a Hash
game_rankings.each do |k, v|
  puts k if v > avg_score
end


#p above_avg # all key-value pairs with higher values than the average
