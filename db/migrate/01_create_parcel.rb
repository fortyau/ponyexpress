class CreateParcel < ActiveRecord::Migration
  def change

    create_table :parcels do |t|
      t.string :to
      t.string :from
      t.text :message
      t.json :payload
    end

  end
end
