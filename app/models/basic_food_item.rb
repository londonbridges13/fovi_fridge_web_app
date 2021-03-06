class BasicFoodItem < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "200x200>", thumb: "90x90>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_presence_of :title
  before_save :set_is_basic#, :lowercase_all_tags

  def lowercase_all_tags
    self.tags.each do |t|
      t.downcase
      # t.save
    end
  end


protected
    def set_is_basic
      self.is_basic = true
    end
end
