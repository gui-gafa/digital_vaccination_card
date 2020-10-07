class CreateReccomendedDoses < ActiveRecord::Migration[6.0]
  def change
    create_table :reccomended_doses do |t|
      t.integer :month_age
      t.references :suggested_vaccine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
