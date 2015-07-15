class ExercisesController < ApplicationController
  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new(exercise_params)
    if @exercise.save
      redirect_to foods_path
    else
      render :new
    end
  end

  private
  def exercise_params
    params.require(:exercise).permit(:calories, :exercise_type)
  end
end
