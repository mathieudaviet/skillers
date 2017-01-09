class Codemirorcol < ActiveRecord::Migration[5.0]
  def change
        add_column :languages, :codemirror, :string
  end
end
