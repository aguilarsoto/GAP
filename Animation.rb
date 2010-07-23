class Animation

def signature(speed, init)
	particle = init.split('')
	return_value = Array.new
	speed = speed.to_i
	while 1
			
		value = particle.map{|element| (element != '.')?'X':element }.join("")
		return_value << value
		return return_value if value =~ /^\.+$/
	
 		new_particle = Array.new(particle.length) {'.'}
		position = 0
		particle.each do|element|
			case element
				when "L" then put_element(new_particle, element, (position-speed)) 
				when "R" then put_element(new_particle, element, (position+speed))
				when "D" then
					put_element(new_particle, "L", (position-speed))
					put_element(new_particle, "R", (position+speed))
			end
			position+=1
		end	
		particle = new_particle
	end
end

def put_element(particle, element, position)
    if (position >= 0 and position < particle.length)		
	if (particle[position] != '.')
		particle[position] = "D"	
	else
		particle[position] = element
	end 
    end
end

end


animation = Animation.new()
puts animation.signature(ARGV[0], ARGV[1])
