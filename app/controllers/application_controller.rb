class ApplicationController < ActionController::Base
  before_filter :load_brands


  protect_from_forgery

  protected

  def load_brands
    @brands = Refinery::Brands::Brand.all
  end
end
