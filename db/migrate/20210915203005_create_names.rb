class CreateNames < ActiveRecord::Migration[5.2]
  def change
    create_table :names do |t|
      t.string :ru
      t.string :en
      t.string :tm

      t.timestamps
    end
  end
end
