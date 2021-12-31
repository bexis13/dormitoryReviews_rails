class CreateDormitories < ActiveRecord::Migration[7.0]
  def change
    create_table :dormitories do |t|
      t.string :name
      t.string :image_url
      t.string :slug

      t.timestamps
    end
  end
end
