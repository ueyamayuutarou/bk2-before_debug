class HomeController < ApplicationController
  def top
  end

  def about
  end

  def new
  	@user = User.new
  end
end
