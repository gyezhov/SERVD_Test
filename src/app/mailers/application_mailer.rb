# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'user@example.com'
  layout 'mailer'
end

# app/mailers/user_mailer.rb
class UserMailer < ApplicationMailer
end