class SuperherosController < ApplicationController
    def index
        superheros = Superhero.all
        render json: SuperheroSerializer.new(superheros).to_serialized_json
    end

    def create
        superhero = Superhero.create(superhero_params)
        if superhero.valid?
            render json: SuperheroSerializer.new(superhero).to_serialized_json
        else
            render json: {message: "'#{superhero.name}' already exists"}
        end
    end

    def update
        superhero = Superhero.find(params[:id]) 
        superhero.update(superhero_params) 
        render json: SuperheroSerializer.new(superhero).to_serialized_json
    end

    private

    def superhero_params
        params.require(:superhero).permit(:name, :score)
    end
end
