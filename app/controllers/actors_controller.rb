class ActorsController < ApplicationController
  def new
  end

  def create
    actor = Actor.new(actor_params)
    if actor.save
      redirect_to actors_path, notice: "El actor fue creado con éxito"
    else
      render :new
    end
  end

  def index
    @actors = Actor.all
  end

  private
  # Strong parameters:
  def actor_params
    params.require(:actor).permit(:name, :bio, :birth_date, :birth_place, :image_url)
  end
end
