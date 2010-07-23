class MissingLetters

	def getMissingLetters(line)
		return_value = ""
		abc = Hash[*line.each_char.collect {|key| [key, 1]}.flatten]
		('a'..'z').each{|char| return_value << char unless abc[char]}
		return return_value
	end

end

missingletters = MissingLetters.new()

puts missingletters.getMissingLetters(ARGV[0])
