class TodosController < ApplicationController
  def index
    render json: Todo.all
  end

  def show
    render json: todo
  end

  def update
    todo.update!(todo_params)

    render json: todo
  end

  private

  def todo
    @_todo ||= Todo.find(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:title, :completed)
  end
end
