class TopController < ApplicationController
  def main
    if session[:login_uid] != nil
      render "main"
    else
      render "login"
    end
  end
  
  def login_move
    render "login"
  end

  def login
    user = User.find_by(uid: params[:uid])
    if user && BCrypt::Password.new(user.pass) == params[:pass]
      session[:login_uid] = params[:uid]
      redirect_to top_main_path
    else
      render "error"
    end
  end
  
  def signup_move
    render "signup"
  end
  
  def signup
    sign_pass = BCrypt::Password.create(params[:pass])
    user = User.new(uid: params[:uid], pass: sign_pass)
    user.save
    session[:login_uid] = params[:uid]
    redirect_to top_login_move_path
  end
  
  def logout
    session.delete(:login_uid)
    redirect_to top_main_path
  end
end
