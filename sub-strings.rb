dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

def substrings(string, dictionary)
  result = Array.new
  dictionary.each do |word|
    result.push(string.downcase.scan(/#{word}/))
  end
  p result.flatten.tally
end

substrings("Howdy partner, how are you doing?", dictionary)
