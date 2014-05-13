class Host < ActiveRecord::Base
  has_many :interfaces
  has_many :disks
  has_many :cpus
  belongs_to :domain
end
