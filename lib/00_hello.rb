def say_hello (firstname)
	puts "Hello #{firstname} ! "
end

def ask_first_name
	puts "C'est quoi ton prénom ?"
	return gets.chomp
end

say_hello ask_first_name