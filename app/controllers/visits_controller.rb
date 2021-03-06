class VisitsController < ApplicationController

  def index
    @visits = current_user.visits.all
  end

  def new
    @visit = Visit.new
  end

  def create
    @visit = current_user.visits.build( params[:visit] )
    if @visit.save
      flash[:notice] = "Your visit to #{@visit.school_name} has been added to your list."
      redirect_to new_visit_ranking_url(@visit)
    else
      flash[:error] = "Visit to #{:school_name} not saved. Try again."
      render :new
    end
  end

  def show
    @visit = Visit.find(params[:id])
    @ranking = @visit.ranking
  end

  def edit
    @visit = Visit.find(params[:id])
  end

  def update
    @visit = Visit.find(params[:id])
    @ranking = @visit.ranking
    if @visit.update_attributes(params[:visit])
      flash[:notice] = "Your visit to #{@visit.school_name} has been updated"
      render "rankings/edit"
    else
      flash[:error] = "Visit not updated. Try again"
      redirect_to edit_visit_url(@visit)
    end
  end

  def destroy
    @visit = Visit.find(params[:id])
    if @visit.destroy
      flash[:notice] = "#{@visit.school_name} has been deleted"
      redirect_to visits_url
    else
      flash[:error] = "School not deleted. Try again"
      redirect_to visits_url
    end
  end

end



