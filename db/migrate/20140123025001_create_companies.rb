class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :logo
      t.string :name
      t.integer :city
      t.integer :country
      t.decimal :employee_satisfaction
      t.integer :votes

      t.timestamps
    end
  end
end
