class Code < ActiveRecord::Base
  attr_accessible :text
  belongs_to :player

  def print_the_code
    print "Malav Bhavsar's task!"
  end
end
