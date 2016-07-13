class BasicFoodItem < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "200x200>", thumb: "90x90>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  # before_save :add_image_url

  protected

  # def add_image_url
  #   self.image_url = URI(request.url) + basic_food_item.image.url(:thumb), notice("Saved Image Url")
  # end
end
