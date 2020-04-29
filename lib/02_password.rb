def signup
	puts "Bonjour. Bienvenu sur le système."
	puts "Merci de définir ton mot de passe"
	print "> "
	mot_de_passe = gets.chomp
	return mot_de_passe
end

def login(password)
	puts "Bonjour. Veuillez saisir votre mot de passe"
	begin
		print "> "
		mot_de_passe = gets.chomp
		if mot_de_passe != password
			puts "Mot de passe incorrect. Nouvel essai"
		end	
	end while mot_de_passe != password
end

def welcome_screen
	puts "==========================================="
	puts "Mot de passe correct."
	puts "Bienvenu sur notre système hyper-sécurisé !"
	puts "==========================================="
end

def perform
	mdp = signup
	puts "Ton mot de passe est : #{mdp}"
	puts""
	login(mdp)
	welcome_screen
end

perform	