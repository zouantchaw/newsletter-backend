class CreateLogos < ActiveRecord::Migration[6.0]
  def change
    create_table :logos do |t|
      t.string :link

      t.timestamps
    end
  end
end
