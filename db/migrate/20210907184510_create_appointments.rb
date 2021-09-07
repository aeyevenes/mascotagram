class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :provider, null: false, foreign_key: true
      t.string :status
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
