class CreateFavoriteIssues < ActiveRecord::Migration[7.0]
  def change
    create_table :favorite_issues do |t|
      t.string :repo_name, null: false
      t.integer :issue_number, null: false
      t.string :title, null: false
      t.string :url, null: false
      t.string :author, null: false

      t.timestamps
    end
  end
end
