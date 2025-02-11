class AddProfileFieldsToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :company_name, :string
    add_column :users, :job_title, :string
    add_column :users, :years_in_position, :integer
    add_column :users, :years_in_company, :integer
  end
end
