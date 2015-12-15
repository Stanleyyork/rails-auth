class MortalityController < ApplicationController
  def new
  end

  def create
  end

  def index
  	@mortalities = Mortality.all
  end

  def show
  end
end
