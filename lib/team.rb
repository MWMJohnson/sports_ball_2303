class Team
  attr_reader :roster, :player_count
  def initialize(name, city)
    @name = name
    @city = city
    @roster = []
    @player_count = 0
  end
 
  def add_player(player)
    @roster << player
  end

  def player_count
    @roster.length
  end

end