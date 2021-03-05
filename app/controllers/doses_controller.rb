class DosesController < ApplicationController
  before_action :find_cocktail

  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:id])
  end

  def create
  end
end
