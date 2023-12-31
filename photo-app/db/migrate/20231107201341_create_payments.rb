class CreatePayments < ActiveRecord::Migration[7.1]
  def change
    create_table :payments do |t|
      t.string :email
      t.string :token
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
