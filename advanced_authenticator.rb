require 'bcrypt'

# my_password = BCrypt::Password.create("pass1")

# puts my_password

module Password_hasher
    puts "password hasher engaged"

    def self.create_hash_pass(password)
        BCrypt::Password.create(password)
    end

    def self.verify_hash_pass(password)
        BCrypt:Password.new(password)
    end

    def self.create_secure_users(list_of_users)
        list_of_users.each do |user|
            user[:password] = create_hash_pass(user[:password])
        end

        list_of_users
    end

    def self.authenticate_users(username,password,list_of_users)
        list_of_users.each do |user|
            if user[:username] == username && password == verify_hash_pass(user[:password])
                return user
            end
        end

        puts "Invalid Credentials"
    end

end