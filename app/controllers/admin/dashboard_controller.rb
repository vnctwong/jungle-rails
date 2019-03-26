class Admin::DashboardController < ApplicationController

#  http_basic_authenticate_with :name => ENV["HTTP_BASIC_AUTH_USERNAME"], :password => ENV["HTTP_BASIC_AUTH_PASSWORD"]
  
  http_basic_authenticate_with name: ENV["ADMIN_USER"], password: ENV["ADMIN_PASS"]

  def show
  end
end
