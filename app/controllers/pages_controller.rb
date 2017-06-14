class PagesController < ApplicationController
  def index
    @user = User.first.first_name
    render 'index.html.erb'
  end
end
