module TeamsHelper
  def show_or_new(user)
    if user.teams_id
      team_path(user.teams_id)
    else
      new_team_path
    end
  end
end
