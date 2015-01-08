# user ID and password must contain at least 7 characters with
# an uppercase, a lowercase, a number and a symbol
# Not working for ñ or middle dot · characters
puts "ID: "
user_id = gets.chomp

for i in 0..user_id.length - 1
	dec = user_id.getbyte(i)
	# Uppercase
	if dec >= 65 && dec <= 90
		uppercase_flag = true
	end
	# Lowercase
	if dec >= 97 && dec <= 122
		lowercase_flag = true
	end
	# Number
	if dec >= 48 && dec <= 57
		number_flag = true
	end
	# Symbol, including spaces
	if (dec >= 32 && dec <= 47) || (dec >= 58 && dec <= 64) ||(dec >= 91 && dec <= 96) ||(dec >= 123 && dec <= 255)
		symbol_flag = true
	end
end
if uppercase_flag && lowercase_flag && number_flag && symbol_flag
	puts "ID ok."
else
	puts "Wrong ID!"
end
