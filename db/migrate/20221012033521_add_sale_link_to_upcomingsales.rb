class AddSaleLinkToUpcomingsales < ActiveRecord::Migration[7.0]
  def change
    add_column :upcomingsales, :sale_link, :string
  end
end
