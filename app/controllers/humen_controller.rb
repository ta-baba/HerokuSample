class HumenController < ApplicationController
  def disp
    @hu = Human.all
  end
  
  def new
    @human = Human.new
  end
  
  def create
    @human = Human.new(human_params)
    @human.save
    redirect root
  end
  
end
