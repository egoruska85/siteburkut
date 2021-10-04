class CreateContactDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :contact_details do |t|
      t.text :address_ru
      t.text :address_en
      t.text :address_tm
      t.string :phone
      t.string :faks
      t.string :email1
      t.string :email2

      t.timestamps
    end
  end
end
