class Activity 
  attr_reader :activity, :participants, :priciness
  def initialize(attributes)
    @activity = attributes[:activity]
    @participants = attributes[:participants]
    @price = attributes[:price]
    @priciness = set_priciness
  end

  def set_priciness 
    if 0 >= @price || @price >= 0.33
      "$"
    elsif 0.34 >= @price || @price >= 0.67 
      "$$"
    elsif 0.68 >= @price || @price >= 1 
      "$$$"
    end
  end
end