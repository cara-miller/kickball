require_relative "./team_data"
require 'pry'
class Team

  attr_reader :name

  def initialize(name)
    @name = name
  end


#watch out for self. in class methods
#the number of local variables when we each a hash
#data types--whether it's an array or a hash
#getting enough local variables to initialize your new objects
  def self.all
    all_teams = []
    TeamData::ROLL_CALL.each do |team, roster|
      all_teams << Team.new(team)
    end
    return all_teams
  end

end
