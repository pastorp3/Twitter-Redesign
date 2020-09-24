# rubocop: disable all

class ApplicationController < ActionController::Base
  before_action :authenticate_user!
end

# rubocop: enable all
