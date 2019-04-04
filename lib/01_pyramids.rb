def half_pyramid
	puts "Entre un nombre (entre 1 et 25)"
	print "> "
	number = Integer(gets.chomp)
	if (number >= 1 && number <= 25)
		number.times do |n|
			space_n = number - 1 - n
			for i in (1..space_n) do
				print " "
			end
			for i in (0..n)	do
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
		number.times do |n|
			k = number - 1 - n
			for i in (1..k) do
				print " "
			end
			for i in (0..n)	do
				print "#"
			end
			for j in (1..i) do
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
	if(number.even?)
		puts "Euh bah non en fait j'ai pas envie là"
	elsif (number >= 1 && number <= 25)
		number_back = (number-1)/2
		number = (number+1)/2
		number.times do |n|
			k = number -1 - n
			for i in (1..k) do
				print " "
			end
			for i in (0..n)	do
				print "#"
			end
			for j in (1..i) do
				print "#"
			end
			puts "\n"
		end
		number_back.downto(1) do |n|
			k = number_back  - n
			for i in (0..k) do
				print " "
			end
			for i in (1..n)	do
				print "#"
			end
			for j in (1..(i-1)) do
				print "#"
			end
			puts "\n"
		end
	else
		puts "Vous n'avez pas entré un nombre entre 1 et 25"
	end
end

def exec
	wtf_pyramid
end

exec
