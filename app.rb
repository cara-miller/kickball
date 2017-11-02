require "sinatra"
require_relative "models/player"
require_relative "models/team"
require_relative "models/team_data"

set :bind, '0.0.0.0'  # bind to all interfaces

get "/" do
  "<h1>The LACKP Homepage<h1>"
end

get "/teams" do
  #any data we need we make instance variables and then
  #invoke them within the erb snippet
  @roster = TeamData::ROLL_CALL
  return erb :teams
end

get "/teams/:one" do
# dynamic url
@the_team = params[:one]
@roster = TeamData::ROLL_CALL
erb :each_team
end
