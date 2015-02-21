class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :provider
      t.string :uid
      t.string :nome
      t.string :oauth_token
      t.datetime :oauth_expires_at

      t.timestamps
    end
  end
end
