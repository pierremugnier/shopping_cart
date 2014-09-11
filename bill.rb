def bill(list, groceries)
  list.map {|product| groceries[product] }.reduce(:+)
end
