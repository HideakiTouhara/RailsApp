class CreateBlogconfigs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogconfigs do |t|
      t.text :title
      t.text :subtitle
      t.string :stylename
      t.string :text

      t.timestamps
    end
  end
end
