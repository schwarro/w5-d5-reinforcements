map = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]

def seat(map)
  map.each_with_index do |item, index|
    item.each_with_index do |i, ind|
      if i == nil
        puts "Row #{index+1} seat #{ind+1} is free. Do you want to sit there? (y/n)"
        answer = gets.chomp.downcase
        if answer == 'y'
          puts "What is your name?"
          name = gets.chomp.downcase
          map[index][ind] = name.capitalize
        end
      end
    end
  end
end

seat(map)

p map
