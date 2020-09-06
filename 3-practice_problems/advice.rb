# before I learned String#gsub!
advice = "Few things in life are as important as house training your pet dinosaur."
revision = advice.split
revision[6] = 'urgent'
advice = revision.join(" ")
puts advice

# String#gsub!
advice = "Few things in life are as important as house training your pet mastodon."
advice.gsub!('important', 'bananas')
puts advice
