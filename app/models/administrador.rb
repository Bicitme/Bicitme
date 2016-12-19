class Administrador < ActiveRecord::Base
	validates :admin_run, uniqueness: true
end
