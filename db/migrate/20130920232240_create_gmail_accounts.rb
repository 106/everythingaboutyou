class CreateGmailAccounts < ActiveRecord::Migration
  def change
    create_table :gmail_accounts do |t|
      t.integer :user_id
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
