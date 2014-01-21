class Facility < ActiveRecord::Base
  has_many :deployments
  validate :has_image?
  attr_accessor :picture
  after_create :save_picture
  
  def save_picture
    unless picture.nil?
      self.image_file = Rails.root.join('public', 'maps', "#{id}.jpg").to_s
      File.open(image_file, 'wb') do |file|
        file.write picture.read
      end
    end
    true
  end
  
  def has_image?
    image_file || picture
  end
end
