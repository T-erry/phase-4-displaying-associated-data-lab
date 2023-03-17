class ItemsController < ApplicationController
    def index
        items = Item.all.order(prices: :desc) 
        render json: items, include: :user
    end
end
