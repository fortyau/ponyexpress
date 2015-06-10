class CreateWhips < ActiveRecord::Migration
  def change

    create_table :whips do |t|
      t.string :name
      t.string :ip
    end

  end
end
