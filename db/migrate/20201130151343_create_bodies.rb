class CreateBodies < ActiveRecord::Migration[6.0]
  def change
    create_table :bodies do |t|
      t.text :content
      t.integer :newsletter_id

      t.timestamps
    end
  end
end
