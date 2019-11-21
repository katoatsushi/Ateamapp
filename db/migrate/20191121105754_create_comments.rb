class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
    	t.string :title
    	t.text :body
    	t.references :post
    	t.references :board
      t.timestamps
    end
  end
end
