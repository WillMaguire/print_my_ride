class Api::CardsController < ApplicationController

  def index

  def index
    render json: Card.all
  end

  def profile
    render json: Card.find(paramas[:id])
  end

  def destroy
    card = Card.find(params[:id])
    if card.destroy
      render json: card
    else
    render json: card.errors
    end
  end

  def create
    card = Card.new
    card.name = params[:name]
    card.image_url = params[:image_url]
    if card.save
      render json: card
    else
      render json: card.errors
    end
  end

  def edit
    card = Card.find_by(id:params[:id])
      render json: card
  end

  def update
    card = Card.find_by(id:params[:id])
    card.name = params[:name]
    card.image_url = params[:image_url]
    if card.save
      render json: card
    else
      render json: card.errors
    end
  end
end
