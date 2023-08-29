require_relative 'advanced_authenticator'

users = [
    {username: "jack", password: "password1"},
    {username: "steve", password: "password2"},
    {username: "taylor", password: "password3"},
    {username: "alli", password: "password4"},
    {username: "joan", password: "password5"},
    {username: "jake", password: "password6"}
 ]

 include Password_hasher

new_users = Password_hasher.create_secure_users(users)
puts new_users

# {:username=>"jack", :password=>"$2a$12$DDSHy4EebsS9sU//GkklkOhOi/8sLYXX7QZ1Gsuo3eos4il3v0MoW"}
# {:username=>"steve", :password=>"$2a$12$9aiVPmtrMAu.QM1uda3a2O1uUQPrwULz5.4mcFf4qNiXCCgqgok7u"}
# {:username=>"taylor", :password=>"$2a$12$qCFDU2YTOt95yr/Wff3yfe.e6SXqJ4mhCcQNlzIA2T6FK0t2M5/Fm"}
# {:username=>"alli", :password=>"$2a$12$CZfSItcTx6DXRn93O5cWEeBcMO5/6T50IY33xXsZy./hINfl6O9Qy"}
# {:username=>"joan", :password=>"$2a$12$B0iBnT1o7oKxcIqeZGuC4e6PrVNVay12SrzE9HEDaRpfdnXkm5nBK"}
# {:username=>"jake", :password=>"$2a$12$8PYuwgZSBKFl6lPLPUqHveNWbHw/nDQ2PBxNUE3lVuyJhD8Juup5K"}



