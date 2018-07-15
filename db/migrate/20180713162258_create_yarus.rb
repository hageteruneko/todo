class CreateYarus < ActiveRecord::Migration[5.2]
  def change
    create_table :yarus do |t|
      t.string :title
      t.text :content
      t.date :dline
      t.date :create

      t.timestamps
    end
  end
end
