class ItemsController < ApplicationController
    def index
        item = Item.all
        render json: item,include: :user
    end

end
