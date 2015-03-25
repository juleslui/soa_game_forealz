class Creature < ActiveRecord::Base
	has_many :moves
	belongs_to :user
	belongs_to :location
end
