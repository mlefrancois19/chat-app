# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email, null: false, default: "noemail@codeboxx.biz"
      t.datetime :remember_created_at
      t.string :username, null: false
      t.timestamps null: false
    end

    add_index :users, :username, unique: true
  end
end
