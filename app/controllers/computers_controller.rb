class ComputersController < ApplicationController
  
  def index
    @computers = Pc.all
  end

  def show
  end

  def new
    @pc = Pc.new
  end
  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
