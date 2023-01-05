class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.datetime :published_on
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
