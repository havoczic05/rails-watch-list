# frozen_string_literal: true

# create list controller
class ListsController < ApplicationController
  before_action :set_lists, only: :show
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @movies = @list.movies
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to lists_path
  end

  private

  def set_lists
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name)
  end
end
