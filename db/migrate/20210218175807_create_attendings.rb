class CreateAttendings < ActiveRecord::Migration[6.1]
  def change
    create_table :attendings do |t|
      t.references :event, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
