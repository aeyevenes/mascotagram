class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.string :name
      t.references :category, null: false, foreign_key: true
      t.string :address
      t.string :city
      t.datetime :start_date
      t.datetime :end_date
      t.text :description
      t.string :telephone
      t.references :provider, null: false, foreign_key: true
      t.integer :rating

      t.timestamps
    end
  end
end
