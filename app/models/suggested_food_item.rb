class SuggestedFoodItem < ActiveRecord::Base

  before_save :set_is_basic

  protected
  
  def set_is_basic
    self.is_basic = false
  end
end
