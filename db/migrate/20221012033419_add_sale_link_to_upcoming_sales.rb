class AddSaleLinkToUpcomingSales < ActiveRecord::Migration[7.0]
  def change
    add_column :upcoming_sales, :sale_link, :string
  end
end
