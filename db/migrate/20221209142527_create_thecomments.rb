class CreateThecomments < ActiveRecord::Migration[7.0]
  def change
    create_table :thecomments do |t|
      t.text :text
      t.text :title
      t.integer :user_id

      t.timestamps
    end
  end
end
