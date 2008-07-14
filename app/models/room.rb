# == Schema Information
# Schema version: 20080611232344
#
# Table name: rooms
#
#  id         :integer         not null, primary key
#  floor_id   :integer
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Room < ActiveRecord::Base

  belongs_to :floor
  belongs_to :building
  has_many :racks

end
