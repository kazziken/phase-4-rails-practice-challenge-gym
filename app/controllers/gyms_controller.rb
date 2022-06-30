class GymsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :error

    def index
        gym = Gym.all
        render json: gym
    end

    def show
        gym = Gym.find(params[:id])
    end

    def destroy
        gym = Gym.find(params[:id])
        gym.destroy
        head :not_found
    end
    
    private

    def error
        render json: { error: "Gym not found"}, status: :not_found
    end

end
