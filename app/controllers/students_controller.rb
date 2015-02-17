class StudentsController < ApplicationController

  before_action :authenticate

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  private
    def authenticate
      redirect_to '/login' unless current_student
    end

end
