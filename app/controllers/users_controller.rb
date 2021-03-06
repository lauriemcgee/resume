class UsersController < ApplicationController
  def index
    @user = self.current_user
    render 'index.html.erb'
  end
  def new
    render 'new.html.erb'
  end
  def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      phone_number: ' ',
      objective_bio: ' ',
      linkedin_url: ' ',
      twitter_handle: ' ',
      portfolio_url: ' ',
      github_url: ' '
    )
    if user.save
      flash[:success] = "Successfully created account!"
      redirect_to '/yourresume'
    else
      flash[:warning] = "uh oh"
      redirect_to '/newuser'
    end
  end
end
