class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :name
      t.string :description
      t.string :tags
      t.datetime :published_at
      t.string :category
      t.string :photo

      t.timestamps
    end
  end
end
