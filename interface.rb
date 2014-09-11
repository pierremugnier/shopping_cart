groceries = {
  "Apple" => 2,
  "Tomato" => 1,
  "Cake" => 3,
  "Kebab chips" => 1,
  "Pickles" => 2
}

def display_products(groceries)
  groceries.each do |product, price|
    puts "#{product} - #{price}€"
  end
end

def shopping_list(groceries)
  list = []
  while true
    puts "Que souhaites-tu acheter ?"
    response = gets.chomp
    break if response == ""
    if groceries.keys.include?(response)
      list << response
    else
      puts "Il n'y a plus de #{response} en stock"
    end
  end
  return list
end

def print_line
  puts "-" * 20
end

print_line

display_products(groceries)

print_line

list = shopping_list(groceries)

print_line

sum = 0

list.each_with_index do |product, index|
  price = groceries[product]
  puts "#{index+1} - #{product} (#{price}€)"
  sum += price
end
print_line

puts "TOTAL #{sum} euros(ttc) - TVA #{(sum * 0.07 * 100).round / 100.0} euros"

