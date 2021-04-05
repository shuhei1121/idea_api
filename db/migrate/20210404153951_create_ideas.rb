class CreateIdeas < ActiveRecord::Migration[6.0]
  def change
    create_table :ideas, id: :bigint do |t|
      t.references :category, type: :bigint, foreign_key: true, null: false
      t.text :body,  null: false
      t.timestamps
    end
  end
end
