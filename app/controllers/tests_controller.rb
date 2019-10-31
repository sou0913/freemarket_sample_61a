class TestsController < ApplicationController

  def index
    @test = Test.new
    @tests = Test.all
  end

  def new
  end
  
  def create
    @test = Test.create(createparams)
  end
  private

  def createparams
    params.require(:test).permit(:image)
  end
  
end
