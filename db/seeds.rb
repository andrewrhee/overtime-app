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
  Post.create!(date:Date.today, rationale: "#{post} Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer et dolor in eros pulvinar commodo sit amet tempor ipsum. Fusce vel feugiat ligula, sit amet ornare libero. Aenean auctor gravida nulla eu scelerisque. Quisque sed cursus odio. Nunc tincidunt turpis et dignissim tincidunt. Nullam at purus facilisis, sollicitudin elit vestibulum, hendrerit ex. Donec maximus odio bibendum porta aliquet. Donec eget massa sed risus suscipit ultricies. Nulla sit amet interdum nulla. Nunc auctor quis nunc id convallis. Praesent lacus est, aliquet ac est a, imperdiet sollicitudin velit. Curabitur luctus, massa rhoncus pharetra varius, turpis massa feugiat neque, sed auctor nisl est accumsan libero. Sed et justo ornare, ullamcorper metus eu, auctor est. Cras eu suscipit sapien.", user_id: @user.id, overtime_request: 2.5)
end

puts "100 Posts have been created"

100.times do |audit_log|
  AuditLog.create!(user_id: @user.id,
        status: 0,
        start_date: (Date.today - 6.days))
end

puts "100 Audit Logs have been created"