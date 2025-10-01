class CreateProposals < ActiveRecord::Migration[8.0]
  def change
    create_table :proposals do |t|
      t.datetime :accepts_commitments_from
      t.datetime :accepts_commitments_until
      t.string :title
      t.string :status
      t.string :strategy

      t.timestamps
    end
  end
end
