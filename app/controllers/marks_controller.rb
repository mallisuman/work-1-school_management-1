class MarksController < ApplicationController
  def index
    @marks = Mark.all
  end

  def show
    @mark = Mark.find(params[:id])
  end

  def new
  	@mark = Mark.new
  end

  def edit
    @mark = Mark.find(params[:id])
  end

  def create
    @mark = Mark.new(mark_params)
 
    if @mark.save
      redirect_to @mark
    else
      render 'new'
    end
  end

  def update
    @mark = Mark.find(params[:id])
 
    if @mark.update(mark_params)
      redirect_to @mark
    else
      render 'edit'
    end
  end

  def destroy
    @mark = Mark.find(params[:id])
    @mark.destroy
 
    redirect_to marks_path
  end

  private
	  def mark_params
	    params.require(:mark).permit(:number, :subject_id, :student_id)
	  end
end
