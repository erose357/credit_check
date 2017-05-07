puts "What card number would you like to check?"
card_number = gets.chomp

until card_number.length == 16

  puts "You must enter a 16 digit number"
  card_number = gets.chomp

end

# card_number = "4929735477250543"

card_number_0 = card_number[0].to_i * 2
card_number_1 = card_number[1].to_i
card_number_2 = card_number[2].to_i * 2
card_number_3 = card_number[3].to_i
card_number_4 = card_number[4].to_i * 2
card_number_5 = card_number[5].to_i
card_number_6 = card_number[6].to_i * 2
card_number_7 = card_number[7].to_i
card_number_8 = card_number[8].to_i * 2
card_number_9 = card_number[9].to_i
card_number_10 = card_number[10].to_i * 2
card_number_11 = card_number[11].to_i
card_number_12 = card_number[12].to_i * 2
card_number_13 = card_number[13].to_i
card_number_14 = card_number[14].to_i * 2
card_number_15 = card_number[15].to_i

def greater(card_number)
  if card_number > 9
    one, two = card_number.to_s.split(//).map { |number| number.to_i }
    card_number = one + two
  else
    card_number = card_number
  end

end


card_number_0 = greater(card_number_0)
card_number_2 = greater(card_number_2)
card_number_4 = greater(card_number_4)
card_number_6 = greater(card_number_6)
card_number_8 = greater(card_number_8)
card_number_10 = greater(card_number_10)
card_number_12 = greater(card_number_12)
card_number_14 = greater(card_number_14)

sum = card_number_0 + card_number_1 + card_number_2 + card_number_3 + card_number_4 + card_number_5 + card_number_6 + card_number_7 + card_number_8 + card_number_9 + card_number_10 + card_number_11 + card_number_12 + card_number_13 + card_number_14 + card_number_15

if sum % 10  == 0
  puts "The number is valid!"
else
  puts "The number is invalid!"
end
