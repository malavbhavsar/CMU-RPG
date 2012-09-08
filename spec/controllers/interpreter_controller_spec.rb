require 'spec_helper'

describe InterpreterController do
  describe 'run the code' do
    it 'run method should be called' do
      controller.should_receive(:run)
      post :run, {:input_code=>"'code 1'"}
    end
    #describe 'the code is ran correctly' do
    #  before :each do
    #    post :run, {:input_code=>"'code 1'"}
    #  end
    #
    #  it 'should assign appropriate value to the variable used in view' do
    #    assigns(:output).should == eval(controller.params[:input_code])
    #  end
    #
    #  it 'should select index template for rendering' do
    #    response.should render_template('index')
    #  end
    #end
  end
end
