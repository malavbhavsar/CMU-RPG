class Player < ActiveRecord::Base
  attr_accessible :name, :energy, :intelligence, :memory, :experience, :c05834, :c14740, :c14741, :c96821
  has_many :codes
end
