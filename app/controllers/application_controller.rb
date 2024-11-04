class ApplicationController < ActionController::Base
  before_action :authenticate_church_user!
end
