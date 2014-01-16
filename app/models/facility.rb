class Facility < ActiveRecord::Base
  has_many :deployments
end
