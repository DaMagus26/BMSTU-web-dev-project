class ScoresController < ApplicationController
  def index
    @teams = Team.all
    @select_options = @teams.map { |t| t.name }.zip(@teams.map { |t| t.id })
  end

  def new_final
  end

  def new_semi
  end

  def create_final
    scores = params.require('final_scores').permit(:analysis, :applicability, :innovativeness, :presentation, :users_id, :teams_id)
    record = FinalScore.create!(scores)

    redirect_to scores_index_path
  end

  def create_semi
    scores = params.require('semi_final_scores').permit(:analysis, :applicability, :innovativeness, :users_id, :teams_id)
    record = SemiFinalScore.create!(scores)

    redirect_to scores_index_path
  end

  def update_final
  end

  def update_semi
  end
end
