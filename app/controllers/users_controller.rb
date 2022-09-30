class UsersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :response_not_found
    def show
        user = User.find(params[:id])
        render json: user,include: :items
    end

    private

    def response_not_found
        render json: {error: "User not found"}, status: :not_found
    end
end
