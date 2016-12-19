class Ciclistum < ActiveRecord::Base
	belongs_to :Usuario
	has_many :Bicicletum
	validates :cic_run, uniqueness: true
end
