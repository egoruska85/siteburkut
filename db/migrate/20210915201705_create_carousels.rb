class CreateCarousels < ActiveRecord::Migration[5.2]
  def change
    create_table :carousels do |t|
      t.string :title_ru
      t.string :title_en
      t.string :title_tm
      t.text :text_ru
      t.text :text_en
      t.text :text_tm

      t.timestamps
    end
  end
end
