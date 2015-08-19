class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.string :title
      t.string :slug, unique: true
      t.text :body
      t.datetime :posted_at
      t.references :user, null: false, index: true, foreign_key: true, type: :uuid

      t.timestamps null: false
    end
  end
end
