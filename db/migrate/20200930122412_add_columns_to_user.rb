class AddColumnsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :cpf, :string
    add_column :users, :birth_date, :date
    add_column :users, :address, :string
    add_column :users, :authenticated, :boolean
    add_column :users, :role, :string
  end
end
