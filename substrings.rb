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
substrings("Howdy partner, sit down! How's it going?", dictionary)