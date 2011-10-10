class CreateGalleriesTable < ActiveRecord::Migration
  def up
    create_table :galleries, :force => true do |t|
      t.string :title
      t.timestamps
    end
  end

  def down
  end
end