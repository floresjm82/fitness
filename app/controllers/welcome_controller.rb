class WelcomeController < ApplicationController

	skip_before_action :authenticate_user!

	def about_us
	end

	def contact_us
	end

	def sample_page
	end

end