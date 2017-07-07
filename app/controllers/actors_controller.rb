class ActorsController < ApplicationController
  def new
  end

  def create
    @actor = Actor.new(actor_params)
    if @actor.save
      redirect_to action: "show"
    else
      render :new
    end
  end

  def show
    @actors = Actor.all
  end

  private
  def actor_params
    params.require(:actor).permit(:name, :bio, :birth_date, :birth_place, :image_url)
  end
end
