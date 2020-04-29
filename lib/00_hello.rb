def ask_first_name
	print "Quel est ton prénom ? > "
	first_name = gets.chomp
	return first_name
end	

def say_hello
	#puts "Hello World, again !"
	#print "Quel est ton prénom ? > "
	first_name = ask_first_name
	puts "Bonjour #{first_name} !"
end	

say_hello