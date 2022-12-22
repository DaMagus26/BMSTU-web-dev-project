class TeamsController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize, only: [:index]

  def authorize
    render file: 'public/422.html', layout: false, status: :unauthorized unless current_user.role == 'admin'
  end

  def index
    @users_with_no_team = User.where(teams_id: nil)
    @teams = Team.all.map do |t|
      leader = t.leader.nil? ? nil : User.find(t.leader)
      if leader.nil?
        members = User.where(teams_id: t.id)
      else
        members = User.where(teams_id: t.id).where.not(id: leader.id).to_a
      end
      {data: t, leader: leader, members: members }
    end
  end

  def add_to_team
    user_params = params.require(:teams).permit(:id)
    members = User.where(teams_id: user_params[:id])
    if members.length >= 4 or not Team.exists?(user_params[:id].to_i)
      redirect_to new_team_path
    else
      logger.debug(Team.exists?(user_params[:id].to_i))
      current_user.update!(teams_id: user_params[:id])
      redirect_to team_path(current_user.teams_id)
    end
  end

  def kick
    user_id = params[:id].to_i
    if user_id == current_user.id
      team = Team.find(current_user.teams_id)
      if team.leader == current_user.id
        team.update!(leader: nil)
      end
      current_user.update(teams_id: nil)


      redirect_to new_team_path
    else
      redirect_back(fallback_location: team_path(current_user.id))
    end
  end

  def destroy
    User.where(teams_id: params[:id]).update!(teams_id: nil)
    Team.destroy(params[:id].to_i)
    redirect_to new_team_path
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
    if current_user.first_name.nil? or current_user.last_name.nil? or current_user.first_name.empty? or current_user.last_name.empty?
      redirect_to edit_user_registration_path
    end
  end
end
