# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#

	4.times do |n|
		channel = Channel.create({ name: "Channel #{n}"})
		24.times do |n|
			shows = channel.shows.create(name: "Show_#{n}_channel_#{channel.id}", time: "#{n}::00::00")
		end
	end

	4.times do |n|
		user = User.new(email: "user_#{n}@mail.com", password: "Test123#", password_confirmation: 'Test123#' )
		3.times do |n|
			user.show_ids << rand (1..15)
		end
		user.save
	end

