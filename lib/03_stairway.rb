def jeter_de
	return rand(1..6)
end

def clear_screen
		print "\e[2J\e[f"
end

def jouer(cur_marche)
	tmp = cur_marche
	val = jeter_de
	if( val == 5 || val ==6)
		tmp +=1
	elsif(val == 1)
		if tmp >0 then tmp -=1 end
	end
	puts "Resulat : #{val}"
	return tmp
end
def average_finish_time (nb_parties)
	sum=0
	nb_parties.times do
		cur_marche = 0
		nb_tour = 0
		while (cur_marche < 10)
			cur_marche =jouer cur_marche
			nb_tour+=1
		end
		sum+=nb_tour
	end
	return sum/nb_parties
end

def perform
	cur_marche = 0
	nb_tour =0
	input = String.new

	while (cur_marche < 10)

		puts "Taper go pour lancer un dé :"
		input = gets.chomp

		break if( input.eql?("quit") ) 
		
		while ( !input.eql?("go") )

		end
		clear_screen 
		cur_marche = jouer cur_marche
		puts "Vous etes à la marche #{cur_marche}"
		nb_tour+=1
		puts input
	end
	puts "Vous avez fait #{nb_tour} tours "
	#puts "Score moyen : #{average_finish_time 100}"
end

perform