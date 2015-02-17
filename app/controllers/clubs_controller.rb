class ClubsController < ApplicationController

  before_action :authenticate

  def index
    @clubs = Club.all
  end

  def show
    @club = Club.find(params[:id])
  end

  private
    def authenticate
      redirect_to '/login' unless current_student
    end

end
