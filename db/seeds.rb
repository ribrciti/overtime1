@user = User.create(email: "test@test.com", 
                    password: "asdfasdf", 
                    password_confirmation: "asdfasdf", 
                    first_name: "Jon", 
                    last_name: "Snow",
                    phone: "1112225555")  #use free twilio number here, if you have one

puts "1 User created"

AdminUser.create(email: "admin@test.com", 
                  password: "asdfasdf", 
                  password_confirmation: "asdfasdf", 
                  first_name: "Admin", 
                  last_name: "UserName",
                  phone: "1112225555")  #use free twilio number here, if you have one

puts "1 AdminUser created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end

puts "100 Post have been created"