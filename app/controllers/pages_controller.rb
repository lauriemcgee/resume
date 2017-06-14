class PagesController < ApplicationController
  def index
    @user = User.first
    render 'index.html.erb'
  end
end
