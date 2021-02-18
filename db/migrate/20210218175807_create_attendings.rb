class CreateAttendings < ActiveRecord::Migration[6.1]
  def change
    create_table :attendings do |t|

      t.timestamps
    end
  end
end
