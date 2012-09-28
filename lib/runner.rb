class Runner
  def initialize

  end
  def perform
    Players.all.each {|p| print "Hello!!" }
  end
end