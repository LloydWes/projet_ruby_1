def say_hello(first_name = nil) # Paramètre optionnel
	if first_name == nil 
		first_name = ask_first_name
	end
	puts "Bonjour, #{first_name} !"
end

def ask_first_name
	puts "Salut quel est ton nom ?"
	print "> "
	first_name = gets.chomp.capitalize
	return first_name
end

	say_hello
