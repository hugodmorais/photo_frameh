class UserMailer < ApplicationMailer
    def new_user
        mail(:to => "hugodanielmorais@gmail.com", :subject => "Bem vindo ao meu site!")
    end
end
