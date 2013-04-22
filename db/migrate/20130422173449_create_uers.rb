class CreateUers < ActiveRecord::Migration
  def change
    create_table :uers do |t|
      t.string :username
      t.string :password_hash

      t.timestamps
    end
  end
end
