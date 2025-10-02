class CreateTopics < ActiveRecord::Migration[8.0]
  def change
    create_table :topics do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.datetime :accepts_supporters_from
      t.datetime :accept_supporters_until
      t.datetime :scheduled_for
      t.integer :min_supporters
      t.integer :max_supporters
      t.string :status
      t.string :visibility
      t.string :timezone
      t.integer :duration_in_minutes
      t.references :proposal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
