class Channel < ApplicationRecord
	has_many :shows, dependent: :destroy


	def self.search search
		result = []
		if search
			shows = Show.where(['name like ?', '%' + search + '%'])
			channels = self.where(['name like ?', '%' + search + '%'])
			result << shows
			result << channels
			result.flatten
		else
			Channel.all
		end
	end
end
