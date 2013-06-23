class RankingsController < ApplicationController

  def index
    @visits = current_user.visits.all
  end

  def new
    @visit = Visit.find(params[:visit_id])
    @ranking = Ranking.new
  end

  def create
    @visit = Visit.find(params[:visit_id])

    @ranking = Ranking.new( params[:ranking] )
    @ranking.visit_id = params[:visit_id]

    if @ranking.save
      flash[:notice] = "Your rankings have been added to your #{@visit.school_name} visit."
      redirect_to visit_url(@visit)
    else
      flash[:error] = "Rankings not saved. Try again."
      redirect_to new_visit_ranking_url
    end
  end

  def show
    @visit = Visit.find(params[:visit_id])
    @ranking = Ranking.find(params[:id])
  end
end
