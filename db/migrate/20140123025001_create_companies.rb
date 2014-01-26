class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :logo
      t.string :name
      t.integer :city
      t.integer :country
      t.decimal :employee_satisfaction, :default => 0
      t.integer :votes, :default => 0

      t.timestamps
    end
  end
end
