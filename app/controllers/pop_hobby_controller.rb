class PopHobbyController < ApplicationController
	def index
		respond_to do |format|
	      	format.html
	      	format.xls 
	    end
	end

	def search
	end
end
