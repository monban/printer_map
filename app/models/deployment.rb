class Deployment < ActiveRecord::Base
  belongs_to :facility
  
  validates :facility, presence: true
end
