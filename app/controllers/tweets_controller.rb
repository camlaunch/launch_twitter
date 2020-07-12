class TweetsController < ApplicationController
	def new
		@tweet = Tweet.new
	end

	def create
		@tweet = Tweet.new(tweet_params)
		if @tweet.save
			flash[:success] = "Your tweet was succesfully published!"
		else
			p @tweet.errors.inspect
		end
		redirect_to new_tweet_path
	
	end
	
	




	def tweet_params
		params.require(:tweet).permit(:content)
	end
end



	