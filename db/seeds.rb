@user = User.create(email: "test@test.com",
                    password: "asdfasdf",
                    password_confirmation: "asdfasdf",
                    first_name: "Jon",
                    last_name: "Snow",
                    phone: "4322386131")

puts "1 User created"

AdminUser.create(email: "admin@test.com",
                  password: "asdfasdf",
                  password_confirmation: "asdfasdf",
                  first_name: "Admin",
                  last_name: "User",
                  phone: "4322386131")

puts "1 Admin User created"


100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content At vero eos et accusamus et iusto odio dignissimos ducimus
  qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,
  similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.", user_id: @user.id, overtime_request: 2.5)
end

puts "100 posts have been create."

100.times do |audit_log|
  AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
end

puts "100 audit logs have been create."
