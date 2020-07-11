class StaticPagesController < ApplicationController
	def main_page
		@mission_statement = "save the world!"
	end
end
