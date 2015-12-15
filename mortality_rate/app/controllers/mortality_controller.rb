class MortalityController < ApplicationController

	before_filter :authorize
  
	def new
	end

	def create
	end

	def index
		@mortalities = Mortality.all
	end

	def show
		@mortality = Mortality.find(params[:id])
	end

end
