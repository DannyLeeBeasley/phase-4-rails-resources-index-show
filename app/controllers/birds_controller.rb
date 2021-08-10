class BirdsController < ApplicationController

    def index
        birds = Bird.all
        render json: birds
    end

    def show
        bird = Bird.find(params[:id])
        if bird
            render json: bird
        else
            render json: {error: "No Such Bird"}, status: :not_found #or 404
        end
    end 
end
