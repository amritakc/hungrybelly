class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.references :user, index: true
      t.string :type
      t.string :street
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
