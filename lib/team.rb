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

  def long_term_players
    @roster.find_all do |player|
      player.contract_length > 24
    end
  end

  def short_term_players
    @roster.find_all do |player|
      player.contract_length <= 24
    end
  end

  def total_value
    total_value_array = @roster.map do |player|
      player.contract_length * player.monthly_cost
    end
    total_value_array.sum
  end


  def details
    {
      "total_value" => total_value,
      "player_count" => player_count
    }

  end

end