class Api::PokemonController < ApplicationController
    def types 
        @types = Pokemon::TYPES
        render json: @types
    end

    # def index
    #     debugger
    # end

    # def show

    # end
end
