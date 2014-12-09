def translate(word)
	 	
	if isVowel(word[0])
		word << "ay"
	else not isVowel(word[0])
		word = word.split("")
		c = word.shift
		word = word.join
		word << c << "ay"
	end
end

def isVowel(c)
	c.index(/[aeiouAEIOU]/) == nil ? false : true
end


