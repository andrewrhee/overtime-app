@user = User.create(email: "test@test.com", 
                    password: "password", 
                    password_confirmation: "password", 
                    first_name: "Jon", 
                    last_name: "Snow",
                    phone: "5302197421")

puts "1 User Created"

AdminUser.create(email: "admin@test.com", 
                  password: "password", 
                  password_confirmation: "password", 
                  first_name: "Admin", 
                  last_name: "Name",
                  phone: "5302197421")

puts "1 Admin User Created"

100.times do |post|
  Post.create!(date:Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end

puts "100 Posts have been created"