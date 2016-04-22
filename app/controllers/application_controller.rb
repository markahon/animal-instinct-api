# -*- encoding : utf-8 -*-
class ApplicationController < ActionController::Base
  include ApplicationHelper
  include Devise::Controllers::Helpers


  # Prevent CSRF attacks by raising an exception.
  protect_from_forgery with: :exception
  # In Rails 3.x:
  # skip_before_filter :verify_authenticity_token, :if => Proc.new { |c| c.request.format == 'application/json' }
  # In Rails 4.x:
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session, :if => Proc.new { |c| c.request.format == 'application/json' }

  respond_to :html, :json

end
