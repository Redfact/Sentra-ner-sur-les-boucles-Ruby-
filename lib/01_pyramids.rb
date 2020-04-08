def half_pyramid(etage)
	for i in 1..etage do
		i.times do print "#" end
			puts ""
	end 
end

def full_pyramid 
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	etage = gets.chomp.to_i

	puts "Voici ta pyramide !"

	#Creer un nouveau tableau de taille etage et ajoute " " dans toutes les cases
	taille = etage *2
	pos = Array.new(taille ," ")
	
	for i in 0 .. etage-1 do
		if i < 1 then pos[taille/2]="#" 
		else 
			pos[(taille/2)+i]="#"
			pos[(taille/2)-i]="#"
		end
		for j in 0 ..taille 
			print pos[j]
		end
		puts ""
	end
end

def wtf_pyramid
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (Impair)"
	
	etage = gets.chomp.to_i
	while (etage%2 ==0)
		puts "Mets un nombre impair !"
			etage = gets.chomp.to_i
	end

	puts "Voici ta pyramide !"

	#Creer un nouveau tableau de taille etage et ajoute " " dans toutes les cases
	taille = etage *2
	deb=0
	fin=0
	pos = Array.new(taille ," ")
	pos[taille/2]="#" 
	for i in 0 ..etage-1 do
		if( i<etage/2)
		deb= (taille/2)-i
		fin= (taille/2)+i
		pos[deb]="#"
		pos[fin]="#"
		else
		pos[deb]=" "
		pos[fin]=" "
		deb +=1
		fin -=1
		end
		for j in 0..taille-1
		print pos[j]
		end
		puts ""
	end	
end

wtf_pyramid