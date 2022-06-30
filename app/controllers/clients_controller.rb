class ClientsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :error

    def index
        client = Client.all
        render json: client
    end

    def show
        client = Client.find(params[:id])
        render json: client
    end

    private 

    def error
        render json: { error: "Client not found" }, status: :not_found
    end

end
