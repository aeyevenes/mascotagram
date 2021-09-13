class ChangeStartDateAndEndDateFromServices < ActiveRecord::Migration[6.0]
  def change
    remove_column :services, :start_date, :datetime
    remove_column :services, :end_date, :datetime
    add_column :services, :availability, :string
  end
end
