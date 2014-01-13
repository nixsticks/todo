class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
      t.string :name
      t.belongs_to :park

      t.timestamps
    end
  end
end
