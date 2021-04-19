dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
    string.downcase!
    dictionary.reduce(Hash.new(0)) do |num, word|
        result = string.scan(word).length
        num[word] = result if result > 0
        num
    end
end

substrings("below", dictionary)
# => {"below"=>1, "low"=>1}

substrings("Howdy partner, sit down! How's it going?", dictionary)
# => {"down"=>1, "go"=>1, "going"=>1, "how"=>2, "howdy"=>1, "it"=>2, "i"=>3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}