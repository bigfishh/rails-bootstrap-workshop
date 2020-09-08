class CreateDrinks < ActiveRecord::Migration[6.0]
  def change
    create_table :drinks do |t|
      t.string :name
      t.string :image_url
      t.belongs_to :user, null: false, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
