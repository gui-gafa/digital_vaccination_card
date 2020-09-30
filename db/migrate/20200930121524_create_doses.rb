class CreateDoses < ActiveRecord::Migration[6.0]
  def change
    create_table :doses do |t|
      t.date :date
      t.references :user, foreign_key: true
      t.references :vaccine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
