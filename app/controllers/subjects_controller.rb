class SubjectsController < ApplicationController
  def dash_board
    @subject = Subject.all
  end

  def index
    @subjects = Subject.all
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
  	@subject = Subject.new
  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def create
    @subject = Subject.new(subject_params)
 
    if @subject.save
      redirect_to @subject
    else
      render 'new'
    end
  end

  def update
    @subject = Subject.find(params[:id])
 
    if @subject.update(subject_params)
      redirect_to @subject
    else
      render 'edit'
    end
  end

  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy
 
    redirect_to subjects_path
  end

  private
	  def subject_params
	    params.require(:subject).permit(:name, :teacher_id, :student_id)
	  end
end
