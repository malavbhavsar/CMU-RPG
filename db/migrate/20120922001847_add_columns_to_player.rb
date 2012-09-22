class AddColumnsToPlayer < ActiveRecord::Migration
  def change
    add_column :players, :energy, :integer, {:limit=>8,:default=>100}
    add_column :players, :intelligence, :integer, {:limit=>8,:default=>0}
    add_column :players, :memory, :integer, {:limit=>8,:default=>0}
    add_column :players, :experience, :integer, {:limit=>8,:default=>0}
    add_column :players, :c05834, :decimal, {:limit=>8, :default=>0.0}
    add_column :players, :c14740, :decimal, {:limit=>8, :default=>0.0}
    add_column :players, :c14741, :decimal, {:limit=>8, :default=>0.0}
    add_column :players, :c96821, :decimal, {:limit=>8, :default=>0.0}
  end
end
