users = [
    {username: "jack", password: "password1"},
    {username: "steve", password: "password2"},
    {username: "taylor", password: "password3"},
    {username: "alli", password: "password4"},
    {username: "joan", password: "password5"},
    {username: "jake", password: "password6"}
 ]

def auth_user(username,password, list_of_users)
    list_of_users.each do |user_record|
        if user_record[:username] == username && user_record[:password] == password
            return user_record
        end
    end
    return "Credentials were not correct"
end
 

 puts "authentication app"
 25.times {print "-"}
 puts
 puts "This program will take input from the user and compare the password"
 puts "If password is correct, you will get back the user object"
 
 attempts = 1

 while attempts < 4
    puts "username: "
    user_name = gets.chomp

    puts "password: "
    pass = gets.chomp

    authentication = auth_user(user_name,pass,users)
    puts authentication

    puts "Press n to quit or anyother key to continue"
    input = gets.chomp.downcase
    
    break if input == "n"
    
    attempts += 1
 end

 puts "You have exceeded the number of attempts, please try again later" if attempts == 4
    
