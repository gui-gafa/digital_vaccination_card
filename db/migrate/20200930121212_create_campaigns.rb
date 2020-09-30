class CreateCampaigns < ActiveRecord::Migration[6.0]
  def change
    create_table :campaigns do |t|
      t.date :start_date
      t.date :end_date
      t.references :vaccine_type, null: false, foreign_key: true
      t.text :public
      t.text :region

      t.timestamps
    end
  end
end
