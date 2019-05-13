class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :authenticate_user!


    puts "///////////////////////////////////////////////////////////////////////////////////////////////////////////"
    puts "SENDGRID_USERNAME: #{ENV['pusher_username']}"
    puts "SENDGRID_PASSWORD: #{ENV['SENDGRID_PASSWORD']}"
end
