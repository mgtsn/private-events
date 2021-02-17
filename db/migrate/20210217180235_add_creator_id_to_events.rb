class AddCreatorIdToEvents < ActiveRecord::Migration[6.1]
  def change
    add_reference :events, :creator, refereces: :users, index: true
  end
end
