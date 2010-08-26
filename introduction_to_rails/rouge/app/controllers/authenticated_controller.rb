class AuthenticatedController < ApplicationController
  before_filter :authenticate

  private

  def authenticate
    authenticate_or_request_with_http_basic do |user_name, password|
      Administrator.find_by_username_and_password(user_name, password)
    end
  end
end
