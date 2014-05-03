class AddTeamAssistantToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :ta_id, :integer
  end
end
