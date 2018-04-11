class CreateMycontacts < ActiveRecord::Migration[5.1]
  def change
    create_table :mycontacts do |t|
      t.string :name
      t.string :text
      t.integer :age
      t.boolean :nationality
      t.text :mail

      t.timestamps
    end
  end
end
