class AddSaleIdToUpcomingsales < ActiveRecord::Migration[7.0]
  def change
    add_column :upcomingsales, :sale_id, :integer
    add_column :upcomingsales, :starting, :datetime
    add_column :upcomingsales, :date, :datetime
  end
end
