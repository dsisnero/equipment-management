# == Schema Information
# Schema version: 20080611232344
#
# Table name: sites
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  latitude    :string(255)
#  longitude   :string(255)
#  elevation   :string(255)
#  locid       :string(255)
#  factype     :string(255)
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Site < ActiveRecord::Base

  has_many :buildings
  has_many :racks

  def to_param
    lid_fac
  end

  def self.find_by_lid_fac(lid_fac,options=nil)
    lid,fac = lid_fac.split("_")
    self.find_by_locid_and_factype(lid,fac)
  end

  def rooms
    self.buildings.map{ |bld| bld.rooms }.flatten
  end
  
  def patch_panels
    self.racks.inject([]){ |total,rack| total << rack.patch_panels; total }
  end



  def lid_fac
    "#{locid}_#{factype}"
  end

end


class FaaFacility < Site





end
