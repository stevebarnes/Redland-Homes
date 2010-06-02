class CreateLeads < ActiveRecord::Migration
  def self.up
    create_table :leads do |t|
      t.string :first_name
      t.string :last_name
      t.string :street
      t.string :suburb
      t.string :postcode
      t.string :phone
      t.string :mobile
      t.string :email_address
      t.string :other
      t.integer :beds
      t.integer :baths
      t.integer :garages
      t.string :comments
      t.timestamps
    end
  end
  
  def self.down
    drop_table :leads
  end
end