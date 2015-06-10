class CreateParcels < ActiveRecord::Migration
  def change

    create_table :parcels do |t|
      t.string :to
      t.string :from
      t.text :message
      t.json :fields
    end

  end
end
