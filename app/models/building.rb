# == Schema Information
# Schema version: 20080611232344
#
# Table name: buildings
#
#  id          :integer         not null, primary key
#  site_id     :integer
#  height      :decimal(, )
#  name        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Building < ActiveRecord::Base

  belongs_to :site
  has_many :floors
  has_many :rooms, :through => :floors

end
