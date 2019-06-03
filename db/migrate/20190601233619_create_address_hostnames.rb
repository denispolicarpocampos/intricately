class CreateAddressHostnames < ActiveRecord::Migration[5.2]
  def change
    create_table :address_hostnames do |t|
      t.references :hostname, foreign_key: true
      t.references :address, foreign_key: true

      t.timestamps
    end
  end
end
