class InterpreterController < ApplicationController
  def run
    @output = eval(params[:input_code])
    render 'index'
  end
end
