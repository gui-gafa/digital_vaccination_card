class CreateSuggestedVaccines < ActiveRecord::Migration[6.0]
  def change
    create_table :suggested_vaccines do |t|
      t.text :description
      t.references :vaccine_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
