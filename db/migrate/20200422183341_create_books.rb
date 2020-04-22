class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :subject
      t.string :book_type
      t.string :author_name
      t.integer :pages
      t.string :listing_name
      t.text :summary
      t.string :address
      t.boolean :borrow
      t.boolean :is_paper_back
      t.boolean :is_pdf
      t.integer :price
      t.boolean :active
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
