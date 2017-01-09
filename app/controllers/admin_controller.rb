class AdminController < ApplicationController
  def createexercise
  end

  def modifyexercise
    @id = params[:id]
    @statement = Exercise.find(params[:id]).statement
    @function = Exercise.find(params[:id]).function
    @language = Exercise.find(params[:id]).language_id
  end

  def listexercise
    @all = Exercise.all
  end

  def createexercices
    Exercise.create statement: params[:statement], function: params[:function], language_id: params[:language]
    redirect_to "/"
  end

  def modifyexercisenext
    Exercise.find(params[:id]).update statement: params[:statement]
    Exercise.find(params[:id]).update function: params[:function]
    Exercise.find(params[:id]).update language_id: params[:language]
    redirect_to "/"
  end
end
