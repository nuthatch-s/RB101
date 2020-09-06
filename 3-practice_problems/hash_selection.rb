flintstones ={
  "Fred" => 0,
  "Wilma" => 1,
  "Barney" => 2,
  "Betty" => 3
}

barneys_value = (flintstones.select {|k,v| k == "Barney"}).flatten

p barneys_value

# one line answer from study guide:
p flintstones.assoc("Barney")