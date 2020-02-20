class ChannelsController < ApplicationController

	def index
		@channels = Channel.search(params[:search])
	end
end
