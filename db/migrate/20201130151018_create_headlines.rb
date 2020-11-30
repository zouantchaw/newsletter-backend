class CreateHeadlines < ActiveRecord::Migration[6.0]
  def change
    create_table :headlines do |t|
      t.string :content
      t.integer :newsletter_id

      t.timestamps
    end
  end
end
