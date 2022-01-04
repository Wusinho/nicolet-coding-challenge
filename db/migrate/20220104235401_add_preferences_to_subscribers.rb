class AddPreferencesToSubscribers < ActiveRecord::Migration[6.1]
  def change
    add_column :subscribers, :preferences, :text, array: true, default: []
  end
end
