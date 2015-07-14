DICTIONARY = ["below","down","go","going","horn","how","howdy","it",
              "i","low","own","part","partner","sit"]

def substrings(str, dict = DICTIONARY)
  results = {}

  str.split.each do |word|
    dict.each do |entry|
      regexp = Regexp.new(entry)
      if word.downcase =~ regexp
        results.keys.include?(entry) ? results[entry] += 1 : results[entry] = 1
      end
    end
  end
  results
end

puts substrings("Howdy partner, sit down! How's it going?")