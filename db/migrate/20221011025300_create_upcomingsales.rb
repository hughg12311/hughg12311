class CreateUpcomingsales < ActiveRecord::Migration[7.0]
  def change
    create_table :upcomingsales do |t|
      t.string :salename
      t.string :location
      t.string :site

      t.timestamps
    end
  end
end
