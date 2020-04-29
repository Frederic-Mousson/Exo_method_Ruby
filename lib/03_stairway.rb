
def escalier
	marche = 0
	nb_coup = 0
	begin
		result_jet = rand(1..6)
		nb_coup += 1
		case result_jet
			when 5..6
				marche += 1
				#puts "Jet : #{result_jet}. Tu es monté à la marche #{marche}"
			when 1
				if marche > 1
					marche -= 1
					#puts "Jet : #{result_jet}. Tu es descendu à la marche #{marche}"
				end	
			else #puts "Jet : #{result_jet}. Tu es toujours à la marche #{marche}"	
		end
	end while marche<10	
	puts "Il t'a fallu #{nb_coup} pour monter les 10 marches !"
	#puts "Félicitations !"
	return nb_coup
end	

#escalier

def average_finish_time(nb_jeu)
	somme_coups = 0
	for i in 1..nb_jeu
		somme_coups = somme_coups + escalier
	end	
	return somme_coups / nb_jeu
end	

def perform
	puts "Sur combien de parties veux-tu tester (entre 1 et 100)"
	begin
		print "> "
		nb_parties = gets.chomp.to_i
		if (nb_parties < 1 || nb_parties > 100)
			puts "Nombre non valide"
			print "Nouvelle entrée "
		end	
	end while (nb_parties < 1 || nb_parties > 100)
	moyenne = average_finish_time(nb_parties)
	puts "Il t'a fallu en moyenne #{moyenne} coups pour monter les 10 marches !"	
end	

perform