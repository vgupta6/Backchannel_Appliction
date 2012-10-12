class AdminsController < ApplicationController

  # just display the form and wait for user to
  # enter a name and password

  def login
    if request.post?
      user = UserAccount.authenticate(params[:userName], params[:encrypted_password])
      puts "hello and Hi and hehe"
      if user
        session[:user_accounts_id] = user.id
        puts session[:user_accounts_id]
        puts "in If"
        redirect_to posts_url
      else
        flash.now[:notice] = "Invalid user/password combination"
      end
    end
  end


  def logout
    session[:user_accounts_id] = nil
    flash[:notice] = "Logged out"
    #redirect_to
  end



  def index
    flash[:notice] = "Try Logging In"
    render "login"
  end

end