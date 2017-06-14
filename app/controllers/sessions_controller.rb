class SessionsController < ApplicationController
  def new
    render 'new.html.erb'
  end
  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = 'We did it! We all did it!'
      redirect_to '/'
    else
      flash[:warning] = 'uh oh'
      redirect_to '/login'
    end
  end
  def destroy
    session[:user_id] = nil
    flash[:success] = 'You logged out, congrats!'
    redirect_to '/login' 
  end
end
