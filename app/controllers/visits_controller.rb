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
      redirect_to visit_url(@visit)
    else
      flash[:error] = "Visit to #{:school_name} not saved. Try again."
      render :new
    end
  end

  def show
    @visit = Visit.find(params[:id])
    # @ranking = @visit.rankings.new
  end

end



