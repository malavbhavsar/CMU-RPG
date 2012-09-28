class Player < ActiveRecord::Base
  attr_accessible :name, :energy, :intelligence, :memory, :experience, :c05834, :c14740, :c14741, :c96821
  has_many :codes
  def perform
    print "amamamama"
    Player.create!(:name => "what the fuk3333!")
  end
end
