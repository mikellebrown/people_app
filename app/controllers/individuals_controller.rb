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
    @individual = Individual.new(individuals_params)
 
    if @individual.save
      redirect_to individuals_path
    else
      render :new
    end
    def edit
      @individual = Individual.find(individuals[:id])
    end
    def update
      raise params.inspect
    end
    def update
      @individual = Individual.find(params[:id])
      @individual.update
      redirect_to individual_path(@individual)
    end

    def destroy
      def destroy
        @individual = individual.find params[:id]
        @individual.destroy
        redirect_to individuals_path
      end
    end

    
    
    
    
    
    # @individual = Individual.find(params[:id])
    # @individual.destroy
    #   redirect_to individuals_path

    # def edit
    #   @individual = Individual.edit
    #   redirect_to individuals_path
  
  private
 
  def individuals_params
    params.require(:individual).permit(:first_name, :last_name, :age, :hair_color, :eye_color, :gender, :alive)
  
    end
  end
end

  
