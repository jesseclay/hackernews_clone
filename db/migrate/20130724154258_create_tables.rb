class CreateTables < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, :email, :password_hash
      t.text :about
      t.timestamps
    end

    create_table :posts do |t|
      t.string :url, :title
      t.belongs_to :user
      t.timestamps
    end

    create_table :comments do |t|
      t.belongs_to :user
      t.belongs_to :post
      t.text :content
      t.timestamps
    end

  end
end
