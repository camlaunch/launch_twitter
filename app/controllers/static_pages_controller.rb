class StaticPagesController < ApplicationController
	def main_page
		if user_signed_in?
			if current_user.profile
				redirect_to new_tweet_path
			else
				redirect_to new_profile_path
			end
		else
			@mission_statement = "save the world!"
		end
	end
end
