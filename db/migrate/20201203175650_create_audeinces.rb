class CreateAudeinces < ActiveRecord::Migration[6.0]
  def change
    create_table :audeinces do |t|
      t.string :email

      t.timestamps
    end
  end
end
