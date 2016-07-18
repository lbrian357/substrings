def substrings(str, dic)
  counts ={}
  dic.each {|word| 
    it_occur = str.downcase.scan(word).length
    if it_occur > 0
      counts[word] = it_occur 
    end
  }
  counts
end
