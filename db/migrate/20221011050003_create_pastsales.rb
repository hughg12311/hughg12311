class CreatePastsales < ActiveRecord::Migration[7.0]
  def change
    create_table :pastsales do |t|
      t.string :salename
      t.string :location
      t.string :site
      t.integer :sale_id
      t.date :date

      t.timestamps
    end
  end
end
