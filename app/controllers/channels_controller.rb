class ChannelsController < ApplicationController

	def index
		@channels = Channel.search(params[:search])
	end

	def add_to_favourite
		show_ids = current_user.show_ids
		show_ids << params[:show_id]
		show_ids = show_ids.flatten
		current_user.update(show_ids: show_ids)
	end
end
