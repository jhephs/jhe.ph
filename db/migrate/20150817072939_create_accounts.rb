class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.string :email
      t.string :username
      t.string :password_digest
      t.references :user, null: false, index: true, foreign_key: true, type: :uuid

      t.timestamps null: false
    end
  end
end
