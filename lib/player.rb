class Player
  attr_reader :monthly_cost, :contract_length, :nickname
  def initialize(name, monthly_cost, contract_length)
    @name = name
    @monthly_cost = monthly_cost
    @contract_length = contract_length
    @nickname = nil
  end

  def first_name
    @name.split.shift
  end

  def last_name
    @name.split.pop
  end 

  def total_cost 
    @monthly_cost * @contract_length
  end

  def set_nickname!(name)
    @nickname = name
  end

end