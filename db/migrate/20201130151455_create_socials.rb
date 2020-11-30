class CreateSocials < ActiveRecord::Migration[6.0]
  def change
    create_table :socials do |t|
      t.string :twitter
      t.string :instagram
      t.string :youtube
      t.integer :newsletter_id

      t.timestamps
    end
  end
end
