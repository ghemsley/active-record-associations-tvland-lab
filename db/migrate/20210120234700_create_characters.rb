class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |table|
      table.string :name
      table.references :actor
      table.references :show
    end
  end
end
