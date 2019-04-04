def half_pyramid
	puts "Entre un nombre (entre 1 et 25)"
	print "> "
	number = Integer(gets.chomp)
	if (number >= 1 && number <= 25)
		1.upto(number) do |n|
			space_n = number - n
			1.upto(space_n) do |k| #Ajout des espace en début de ligne
				print " "
			end
			1.upto(n) do |j|
				print "#"
			end
			puts "\n"
		end
	else
		puts "Vous n'avez pas entré un nombre entre 1 et 25"
	end
end

def full_pyramid
	puts "Entre un nombre (entre 1 et 25)"
	print "> "
	number = Integer(gets.chomp)
	if (number >= 1 && number <= 25)
		1.upto(number) do |n|
			space_n = number - n
			1.upto(space_n) do |k| #Ajout des espace en début de ligne
				print " "
			end
			1.upto(n) do |j|
				print "#"
			end
			1.upto((n-1)) do
				print "#"
			end
			puts "\n"
		end
	else
		puts "Vous n'avez pas entré un nombre entre 1 et 25"
	end
end

def wtf_pyramid
	puts "Entre un nombre (entre 1 et 25)"
	print "> "
	number = Integer(gets.chomp)
	if (number >= 1 && number <= 25)#if 1
		if(number.even?) #if 2
			puts "Nan franchement j'ai pas que ça à foutre"
		else #if 2
			number_back = (number-1)/2
			number = (number+1)/2

			1.upto(number) do |n| #upto 1
				space_n = number - n
				1.upto(space_n) do |k| #Ajout des espace en début de ligne
					print " "
				end #
				1.upto(n) do |j|
					print "#"
				end #
				1.upto((n-1)) do
					print "#"
				end #
				puts "\n"
				end #upto 1

			number_back.downto(1) do |k| #downto 1
				space_j = number_back - k + 1
				1.upto(space_j) do
					print " "
				end
				k.downto(1) do
					print "#"
				end #
				k.downto(2) do
					print "#"
				end #
				puts "\n"
			end #downto 1

		end #if 2
	else #if 1
		puts "Vous n'avez pas entré un nombre entre 1 et 25"
	end #if 1
end #wtf_pyramid

wtf_pyramid