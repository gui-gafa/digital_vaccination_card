class CreateVaccines < ActiveRecord::Migration[6.0]
  def change
    create_table :vaccines do |t|
      t.text :user_comment
      t.references :user, null: false, foreign_key: true
      t.references :vaccine_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
