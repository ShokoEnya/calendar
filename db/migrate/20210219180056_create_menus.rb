class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.string :main,   null: false
      t.string :side_1
      t.string :side_2
      t.timestamps
    end
  end
end
