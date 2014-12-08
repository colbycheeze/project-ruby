require 'set'

def echo(msg)
	msg
end

def shout(msg)
	msg.upcase
end

def repeat(msg, n=2)
	newMsg = "" << msg
	(n-1).times { newMsg << " #{msg}"}
	newMsg
end

def start_of_word(word, n)
	letters = ""
	n.times { |i| letters << word[i] }
	letters
end

def first_word(sentance)
	sentance.split(" ")[0]
end

def titleize(title)
	title = title.split(" ")

	s = Set.new ['a', 'an', 'the', 'and', 'but', 'or', 'for', 'nor', 'etc.', 'on', 'at', 'to', 'from', 'by', 'over']
	title.each do |word|		
		word[0] = word[0].upcase unless s.include? word	
	end

	title[0].capitalize!
	title = title.join(" ")	
	title
end

puts titleize("is there this is a cool title for you")


