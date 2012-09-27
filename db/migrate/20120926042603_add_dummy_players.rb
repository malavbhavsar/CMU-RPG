class AddDummyPlayers < ActiveRecord::Migration
  MORE_PLAYERS = [
      { :name=>'snow', :energy=>30, :intelligence=>5, :memory=>3, :experience=>4, :c05834=>3.0, :c14740=>2.0, :c14741=>1.0, :c96821=>3},
      { :name=>'smoke', :energy=>60, :intelligence=>5, :memory=>3, :experience=>6, :c05834=>2.0, :c14740=>2.0, :c14741=>1.0, :c96821=>2}
  ]
  def change
    MORE_PLAYERS.each do |player|
      Player.create!(player)
    end
  end
end
