class CodesController < ApplicationController
  def create
    Player.find(params[:player_id]).codes.create!(:text=> params[:code_field])
    redirect_to player_path(params[:player_id].to_i)
  end
end
