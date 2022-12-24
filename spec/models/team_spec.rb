require 'rails_helper'

RSpec.describe Team, type: :model do
  describe 'when created' do
    it 'is valid with valid parameters' do
      new_team = Team.new(name: 'Webbers', track: 0)
      expect(new_team).to be_valid
    end

    it 'is invalid without name' do
      new_team = Team.new(track: 0)
      expect(new_team).to_not be_valid
    end

    it 'is invalid without track' do
      new_team = Team.new(name: 'Webbers')
      expect(new_team).to_not be_valid
    end

    it 'is invalid without unique name' do
      new_team = Team.new(name: 'AXIOM')
      expect(new_team).to_not be_valid
    end
  end
end
