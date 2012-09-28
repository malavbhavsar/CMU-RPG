class Worker
  def initialize

  end
  def perform
    Player.all.each do |p|
      p.instance_eval do
        def do_stuff
          eval(self.codes.last.text)
        end
      end
      p.do_stuff
    end
  end
end