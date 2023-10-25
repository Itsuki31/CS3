require "bcrypt"

signup_password = BCrypt::Password.create("sanriko")
puts signup_password
signup_password = BCrypt::Password.create("sanriko2")
puts signup_password

User.find_by(uid: params[:uid])

login_password = BCrypt::Password.new(user.pass)
if login_password == "my password" #params[:pass]
    puts "OK"
end