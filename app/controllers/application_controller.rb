class ApplicationController < ActionController::Base
	skip_before_action :verify_authenticity_token, if: -> { request.format.json? || request.format.xml? || request.format.js? }
	before_action :authenticate_user!
end
