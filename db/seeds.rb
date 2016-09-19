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
  Post.create!(date: Date.today, rationale: "#{post} rationale content Subway tile intelligentsia +1, kogi pug tacos heirloom pork belly kitsch iPhone. Pop-up sustainable bitters, hammock sriracha microdosing forage offal fingerstache slow-carb brunch. Trust fund tattooed church-key, seitan enamel pin knausgaard franzen thundercats blog copper mug snackwave. Offal tousled celiac coloring book before they sold out. ", user_id: @user.id, overtime_request: 2.5)
end

puts "100 Post have been created"


AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 20.days))

puts "3 audit logs have been created"