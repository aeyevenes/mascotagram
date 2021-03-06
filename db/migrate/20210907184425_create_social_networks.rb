class CreateSocialNetworks < ActiveRecord::Migration[6.0]
  def change
    create_table :social_networks do |t|
      t.string :name
      t.string :url
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
