class CreateTables < ActiveRecord::Migration[5.0]
  def change
     create_table :tests
     create_table :links
     create_table :exercises
     create_table :languages
     add_column :tests, :company, :string
     add_column :tests, :start_date, :datetime
     add_column :tests, :end_date, :datetime
     add_column :tests, :creator_email, :string
     add_column :tests, :key, :string
     add_column :links, :test_id, :integer
     add_column :links, :exercise_id, :integer
     add_column :exercises, :statement, :text
     add_column :exercises, :function, :string
     add_column :exercises, :language_id, :integer
     add_column :languages, :name, :string
  end
end
