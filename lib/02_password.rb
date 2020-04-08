def sign_up
	puts "Nouveau mot de passe "
	return gets.chomp
end

def login mdp 
	puts "Login :"
	input = gets.chomp
	while ( !input.eql?(mdp) )
			puts "Erreur : Re-saisir mot de passe"
			input = gets.chomp
	end

	welcome_screen
end

def welcome_screen
	puts "Welcome !!"
end

def perform
	user_mdp = sign_up
	puts "votre mot de passe est #{user_mdp}"
	login user_mdp
end
perform