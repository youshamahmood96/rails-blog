class CreateArticleCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :article_categories do |t|
      t.integer :articles1_id
      t.integer :category_id
    end
  end
end
