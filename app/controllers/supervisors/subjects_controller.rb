class Supervisors::SubjectsController < ApplicationController
  before_action :logged_in_user
  before_action :current_subject, only: [:show, :edit, :destroy, :update] 

  def index
    @subjects = Subject.all
    @tasks = Task.all
      
  end

  def show
    @subjects = @course.subjects
    @users = @course.users
 
    @subjects.each do |subject|
      @enrollment_task = subject.enrollment_tasks.new
    end
  end

  def new
    @subject = current_user.subjects.new
    @tasks = @subject.tasks.build
  end

  def edit
  end

  def create
    @subject = current_user.subjects.new subject_params
    if @subject.save
      flash[:success] = "Subject created"
      redirect_to supervisors_subjects_path(@task)
    else
      render :new
    end
  end

  def update
    if @subject.update_attributes subject_params
      flash[:success] = "Successfully updated"
      redirect_to supervisors_subjects_path
    else
      render :edit
    end
  end

  def destroy
    @subject.destroy
    flash[:success] = "Subject is destroyed."
    redirect_to supervisors_subjects_path
  end

  private
  def subject_params
    params.require(:subject).permit :name, :description,
     tasks_attributes: [:name, :id, :_destroy, :description]
  end

  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end

  def current_subject
    @subject = Subject.find params[:id]
  end
end