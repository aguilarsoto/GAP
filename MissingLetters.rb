class MissingLetters

	def getMissingLetters(line)
		abc = Hash[*line.each_char.collect {|key| [key, 1]}.flatten]
		('a'..'z').each{|char| print char unless abc[char]}
	end

end

missingletters = MissingLetters.new()

missingletters.getMissingLetters(ARGV[0])
