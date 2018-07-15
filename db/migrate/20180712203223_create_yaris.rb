class CreateYaris < ActiveRecord::Migration[5.2]
  def change
    create_table :yaris do |t|
      t.string :title
      t.text :content
      t.date :term

      t.timestamps
    end
  end
end
