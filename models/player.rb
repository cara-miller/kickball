require_relative "./team_data"
require 'pry'

class Player
  def initialize(name, position, team_name)
    @name = name
    @position = position
    @team_name = team_name
  end


# pay attention to what you're accessing in the hashes
  def self.all
      all_players = []
      TeamData::ROLL_CALL.each do |team, roster|
        roster.each do |position, name|
          all_players <<Player.new(name, position, team)
        end
      end
    return all_players
  end




end
  binding.pry
