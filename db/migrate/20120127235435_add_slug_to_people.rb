class AddSlugToPeople < ActiveRecord::Migration
  def change
    add_column :people, :slug, :string, :null => false, :default => ""

    Person.all.each do |person|
      person.save!
    end

    add_index :people, :slug, :unique => true

  end
end
