module ScoresHelper
  def calculate_sf_score(id)
    if SemiFinalScore.find_by(teams_id: id)
      team_sf_scores = SemiFinalScore.where(teams_id: id)
      (team_sf_scores.average(:analysis) + team_sf_scores.average(:innovativeness) + team_sf_scores.average(:applicability)).round(1)
    else
      0
    end
  end

  def calculate_f_score(id)
    if FinalScore.find_by(teams_id: id)
      team_sf_scores = FinalScore.where(teams_id: id)
      (team_sf_scores.average(:analysis) + team_sf_scores.average(:innovativeness) + team_sf_scores.average(:applicability) + team_sf_scores.average(:presentation)).round(1)
    else
      0
    end
  end
end
