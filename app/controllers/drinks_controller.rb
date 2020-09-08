class DrinksController < ApplicationController

    # get '/drinks'
    def index
        # model
        @drinks = Drink.all

        # response
        render :index
    end

    # get '/drinks/:id'
    def show
        # model
        @drink = Drink.find_by(id: params[:id])

        # response
        render :show
    end

    # get "/drinks/new"
    def new
        
        # model
        @drink = Drink.new
        @errors = flash[:errors]

        # response
        render :new
    end

    # post '/drinks'
    def create
        # model

        @drink = Drink.create(drink_params)

        # if the drink is valid, redirect to the drink path
        if @drink.valid?
        # response
        flash[:success] = "Good job filling out the form!"
        redirect_to drinks_path
        else
        # otherwise, send an error message and redirect to the new page so they fill out the form again
        flash[:errors] = @drink.errors.full_messages
        redirect_to new_drink_path
        end
    end

    # get '/drinks/:id/edit'
    def edit
        # model
        @drink = Drink.find_by(id: params[:id])

        # response
        render :edit
    end

    # patch '/drinks/:id'
    def update
        # model
        @drink = Drink.find_by(id: params[:id])
        @drink.update(drink_params)
        
        # response
        redirect_to @drink
    end

    def destroy
        drink = Drink.find_by(id: params[:id])
        drink.destroy

        # response
        redirect_to drinks_path
    end

    private

    def drink_params
        params.require(:drink).permit(:name, :image_url, :user_id, :description)
    end

end
