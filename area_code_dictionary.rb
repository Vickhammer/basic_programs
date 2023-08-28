area_codes = {
    "newyork" => "212",
    "newbrunswick" => "732",
    "edison" => "908",
    "plainsboro" => "609",
    "sanfrancisco" => "301",
    "miami" => "305",
    "paloalto" => "650",
    "evanston" => "847",
    "orlando" => "407",
    "lancaster" => "717"
  }

def get_city_names(hash)
    puts hash.keys
end

def get_area_code(hash,key)
    hash[key]
end

loop do
    puts "Do you want to lookup an areacode based on a city name? (Y/N)"
    input1 = gets.chomp.downcase
    if input1 == "y"
        puts "which city do you need the area code for?"
        get_city_names(area_codes)
        input = gets.chomp.downcase

        if !get_area_code(area_codes,input).nil?
            puts "The area code for #{input} is #{get_area_code(area_codes,input)}"
        else
            puts "That is an invalid city, please try again."
        end

    else
        puts "Have a nice day!"
        break
    end
end