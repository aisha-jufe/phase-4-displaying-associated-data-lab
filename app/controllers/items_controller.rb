class ItemsController < ApplicationController
    def index
      items = Item.all.map { |item| {
        id: item.id,
        name: item.name,
        description: item.description,
        price: item.price,
        user: {
          id: item.user.id,
          username: item.user.username,
          city: item.user.city
        }
      }}
      render json: items
    end
  end
  