def signup
	pass = "1"
	pass_confirm = "2"
	loop do
		puts "Merci de saisir un mot de passe (5 caractères minimum)"
		print "> "
		#pass = gets.chomp
		pass = STDIN.noecho(&:gets).chomp.to_s
		if(pass.length<5)
			puts "Le mot de passe doit faire 5 caractères minimum"
			next
		end
		puts "\n"
		puts "Merci de confirmer votre mot de passe"
		print "> "
		#pass_confirm = gets.chomp
		pass_confirm = STDIN.noecho(&:gets).chomp.to_s
		puts "\n"

		break if (pass == pass_confirm)
		puts "Les 2 mots de passe ne correspondent pas"
	end
	if(pass==pass_confirm)
		return pass
	end
end

def login password
	loop do
		puts "Entrez votre mot de passe"
		print "> "
		#entered_pass = gets.chomp
		entered_pass = STDIN.noecho(&:gets).chomp
		puts "\n"
		break if entered_pass == password
		puts "Mot de pass incorect"
	end

end

def welcome_screen
	puts "Vous êtes maintenant connecté"
	puts "Voici les secrets de la NSA"
end

def perform
	require 'io/console'
	password = signup
	puts "Nickel ! Maintenant tu vas te connecter avec ton mot de passe"
	login(password)
	welcome_screen
end

perform

