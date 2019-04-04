def roll_dice
	return ( 1 + rand(6) )
end

def main(verbose=false) #si verbose = 1 on affiche des phrases qui explique ce qu'il se passe (0 par défaut)
	nombre_coups = 0
	marche_rendu = 0
	while( marche_rendu <= 10)
		de = roll_dice
		nombre_coups = nombre_coups + 1
		case de
		when 1
			if(marche_rendu>0)
				marche_rendu -= 1
				if verbose
					puts "Vous descendez d'une marche"
				end
			end
		when 2..4
			if verbose
				puts "Rien ne se passe"
			end
		when 5..6
			if(marche_rendu <= 10)
				marche_rendu += 1
				if verbose
					puts "Vous montez une marche"
				end
			end
		else
			puts "Oup on dirais que le dé à tiré une face qui n'existe pas, c'est une ERREUR FATALE, le programme va se fermer"
			exit
		end
	end
	if verbose
		puts "Vous avez gagné en #{nombre_coups} coups !"
	end
	return nombre_coups
end


def statistique
	nombre_coups_total = 0
	100.times do |n|
		nombre_coups_total = nombre_coups_total + main
	end
	moyenne_coups = nombre_coups_total / 100
	puts "\nEn moyenne une partie se gagne en #{moyenne_coups} coups\n"
end

statistique #Pour lancer le jeu 100 fois et avoir la moyenne du nombre de coup pour gagner
#main 1 #Pour lancer le jeu une fois