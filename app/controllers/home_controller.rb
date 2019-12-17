class HomeController < ApplicationController
  def top
  	flash[:sign_out] = "Signed out successfully"
  end

  def about
  end
end
