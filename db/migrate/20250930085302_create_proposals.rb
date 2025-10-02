class CreateProposals < ActiveRecord::Migration[8.0]
  def change
    create_table :proposals do |t|
      t.string :status
      t.string :strategy

      t.timestamps
    end
  end
end
