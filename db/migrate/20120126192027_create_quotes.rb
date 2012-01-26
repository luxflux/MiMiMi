class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.references :person
      t.text :body

      t.timestamps
    end
    add_index :quotes, :person_id
  end
end
