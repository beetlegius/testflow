class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :code
      t.string :color
      t.string :size

      t.belongs_to :product, foreign_key: true, index: true
      t.timestamps
    end
  end
end
