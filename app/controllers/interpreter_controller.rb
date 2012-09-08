class InterpreterController < ApplicationController
  def index
  end

  def run
     @output = eval(params['input_code'])
     render :action => 'index'
  end

end
