class Barracks

  attr_reader :gold, :food

  def initialize
    @gold = 1000
    @food = 80

  end

  def can_train_footman?
    food >= 2 && gold >= 135
  end

  def train_footman
    return nil if can_train_footman? == false
      @food -= 2
      @gold -= 135
      Footman.new
  end


  def can_train_peasant?
    food >= 5 && gold >= 90
  end

  def train_peasant
    return nil if can_train_peasant? == false
      @food -= 5
      @gold -= 90
      Peasant.new
  end
end
