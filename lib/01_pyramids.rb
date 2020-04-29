def half_pyramid
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étage veux-tu (entre 1 et 25) ?"
	begin
		print "> "
		taille = gets.chomp.to_i
	end while (taille < 1 || taille > 25)

	for i in 1..taille
		for n in 1..taille-i
			print " "
		end
		for n in 1..i
			print "#"
		end
		puts ""
	end	
end

#half_pyramid

def full_pyramid
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étage veux-tu (entre 1 et 25) ?"
	begin
		print "> "
		taille = gets.chomp.to_i
	end while (taille < 1 || taille > 25)
	#Calcul de la taille de la base de la pyramide
	base_pyramid = (taille * 2) - 1

	puts "Voici la pyramide :"

	for i in 1..taille
		for n in 1..taille-i
			print " "
		end
		nb_star = (2 * i) - 1
		for n in 1..nb_star
			print "#"
		end
		puts ""
	end	
end	

#full_pyramid

def affiche_etage(nb_space, nb_star)
	for n in 1..nb_space
		print " "
	end
	for n in 1..nb_star
		print "#"
	end
	puts ""
end

#affiche_etage(4,1)

def full_pyramid2(taille)
	hauteur = taille/2+1
	for i in 1..hauteur
		nb_space = hauteur-i
		nb_star = 2 * i - 1
		affiche_etage(nb_space, nb_star)
	end	
end	

def inverse_pyramid2(taille)
	hauteur = taille/2
	for i in 1..hauteur
		nb_space = i
		nb_star = 2 * (hauteur - i) + 1
		affiche_etage(nb_space, nb_star)
	end	
end

def perform
	puts "Salut, bienvenue dans ma super pyramide !"
	puts "Combien d'étage veux-tu à ta pyramide (entre 1 et 25) ? (choisis un nombre impair"
	begin
		print "> "
		taille = gets.chomp.to_i
		if ((taille < 1 || taille > 25) || (taille % 2 == 0))
			puts "Nombre non valide"
			print "Nouvelle entrée "
		end	
		#puts "Modulo : #{taille % 2}"
	end while ((taille < 1 || taille > 25) || (taille % 2 == 0))

	full_pyramid2(taille)
	inverse_pyramid2(taille)
end	

perform