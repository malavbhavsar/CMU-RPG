class Code < ActiveRecord::Base
  attr_accessible :text
  belongs_to :player
end
