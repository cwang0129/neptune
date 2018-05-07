class WelcomeController < ApplicationController
	def home
		redirect_to items_path
	end

	def about
		
	end
end