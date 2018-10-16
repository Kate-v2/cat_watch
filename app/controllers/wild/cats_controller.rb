class Wild::CatsController < ApplicationController
  def index
    @cats = Cat.where(status: 1)
  end

  def show
    cat = Cat.find(params[:id])
    if cat.status == 'wild'
      @cat = cat
    else
      redirect_to wild_cats_path
    end

  end

end
