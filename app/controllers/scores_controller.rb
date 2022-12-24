class ScoresController < ApplicationController
  def index
    @teams = Team.all
    @select_options = @teams.map { |t| t.name }.zip(@teams.map { |t| t.id })
  end

  def create
    if params[:stage] == '1'
      scores = params.permit(:analysis, :applicability, :innovativeness, :users_id, :teams_id)
      record = SemiFinalScore.create!(scores)
    else
      scores = params.permit(:analysis, :applicability, :innovativeness, :presentation, :users_id, :teams_id)
      record = FinalScore.create!(scores)
    end
    redirect_to scores_index_path
  end
end
