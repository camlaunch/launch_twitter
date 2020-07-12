class ProfilesController < ApplicationController
 before_action :authenticate_user!

 def new
 	@profile = Profile.new
 end



end
