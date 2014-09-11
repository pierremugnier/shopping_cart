require_relative "bill"

groceries = {
  "Apple" => 2,
  "Tomato" => 1,
  "Cake" => 3,
  "Kebab chips" => 1,
  "Pickles" => 2
}

def display(products, groceries)
  products.each_with_index do |product, index|
    puts "#{index + 1} - #{product} (#{groceries[product]}€)"
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

# Print all articles in stock
display(groceries.keys, groceries)

print_line

# Print bought articles
list = shopping_list(groceries)
display(list, groceries)

print_line

# Print bill
total = bill(list, groceries)
tva = (total * 0.07 * 100).round / 100.0
puts "TOTAL: #{total}€ (ttc) - TVA #{tva}€"

