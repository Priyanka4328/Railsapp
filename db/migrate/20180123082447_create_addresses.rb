class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :area
      t.string :city
      t.string :state
      t.string :pin

      t.timestamps
    end
  end
end
