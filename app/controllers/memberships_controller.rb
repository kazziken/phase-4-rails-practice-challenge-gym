class MembershipsController < ApplicationController
    def index
        members = Membership.all
        render json: members
    end

    def show
        member = Membership.find(params[:id])
        render json: member
    end

    def create
        member = Membership.create(member_params)
        render json: member, status: :created
    end

    private
    
    def member_params
        params.permit(:gym_id, :client_id, :charge)
    end


end
