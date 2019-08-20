class IndividualsController < ApplicationController
  def index
    @individuals = Individual.all
  end

  def show
    @individual = Individual.find(params[:id])
  end

  def new
    @individual = Individual.new
  end

  def create
    @individual = Individual.new(pages_params)
 
    if @individual.save
      redirect_to individuals_path
    else
      render :new
    end

  def destroy
    @individual = Individual.find(params[:id])
    @individual.destroy
      redirect_to individuals_path
    end
    def edit
      @individual = Individual.find params[:id]
      @individual.individuals.build
   end
 
  private
 
  def individuals_params
    params.require(:individual).permit(:first_name, :last_name, :age, :hair_color, :eye_color, :gender, :alive)
  
    end
  end
end
  
