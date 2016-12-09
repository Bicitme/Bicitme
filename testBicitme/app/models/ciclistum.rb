class Ciclistum < ActiveRecord::Base
	belongs_to :Usuario
	has_many: :Bicicletum
end
