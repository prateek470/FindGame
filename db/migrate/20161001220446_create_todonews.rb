class CreateTodonews < ActiveRecord::Migration[5.0]
  def change
    create_table :todonews do |t|
      t.string :title
      t.text :notes
      t.string :place

      t.timestamps
    end
  end
end
