class CreateAccounts < ActiveRecord::Migration[8.0]
  def change
    create_table :accounts do |t|
      t.string :title
      t.string :description
      t.string :link
      t.string :email
      t.string :phone_number
      t.string :primary_owner_id

      t.timestamps
    end
  end
end
