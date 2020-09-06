ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 72, "Eddie" => 10 }

p ages.assoc("Spot")
p ages.select { |key, value| key == "Spot"}
p ages.dig("Spot")

# begin solutions provided by LS
p ages.key?

# along with Hash#include? 
# and Hash#member?