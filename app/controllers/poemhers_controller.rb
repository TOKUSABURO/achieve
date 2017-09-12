class PoemhersController < ApplicationController

  def index
    @poemhers = Poem.all
  end

  def show
    @poemher = Poem.find(params[:id])
  end
  
end
