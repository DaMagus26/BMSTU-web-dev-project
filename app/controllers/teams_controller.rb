class TeamsController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize, only: [:index, :destroy]

  def authorize
    render file: 'public/422.html', layout: false, status: :unauthorized unless current_user.role == 'admin'
  end

  def index
  end

  def add_to_team
    user_params = params.require(:teams).permit(:id)
    members = User.where(teams_id: user_params[:id])
    if members.length >= 4 or not Team.exists?(user_params[:id].to_i)
      logger.debug("i'm here")
      redirect_to new_team_path
    else
      logger.debug(Team.exists?(user_params[:id].to_i))
      current_user.update!(teams_id: user_params[:id])
    end
  end

  def kick
    user_id = params[:id].to_i
    User.find(user_id).update(teams_id: nil)
    redirect_back(fallback_location: team_path(current_user.id))
  end

  def destroy
  end

  def create
    begin
      team_params = params.require(:teams).permit(:name, :track)
      new_team = Team.create!(name: team_params[:name], track: team_params[:track].to_i, leader: current_user.id)
      current_user.update!(teams_id: new_team.id)
      redirect_to team_path(new_team.id)
    rescue ActiveRecord::RecordInvalid => err
      redirect_to new_team_path
    end
  end

  def show
    @team = Team.find(params[:id].to_i)
    @leader = User.find(@team.leader)
    @members = User.where(teams_id: @team.id).where.not(id: @leader.id)
  end

  def edit
  end

  def new
    if current_user.first_name.nil? or current_user.last_name.nil?
      redirect_to edit_user_registration_path
    end
  end
end
