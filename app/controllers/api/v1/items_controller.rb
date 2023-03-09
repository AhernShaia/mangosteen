class Api::V1::ItemsController < ApplicationController
    def index
        item = Item.page(params[:page])
        render json: { resources: item, pager: {
            page: params[:page],
            per_page: 100,
            count: Item.count
        }}
    end

    def create
        item = Item.new amount: params['amount']
        if item.save
            render json: { resources: item }
        else
            resources json: { errors: item.errors }
        end
    end
end
