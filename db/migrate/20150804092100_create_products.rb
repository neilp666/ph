class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :link
      t.string :tagline
      t.string :platform

      t.timestamps
    end
  end
end
