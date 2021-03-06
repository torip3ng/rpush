class AddApnsp8 < ActiveRecord::VERSION::MAJOR >= 5 ? ActiveRecord::Migration[5.0] : ActiveRecord::Migration
  def self.up
    add_column :rpush_apps, :apn_key, :string, null: true
    add_column :rpush_apps, :apn_key_id, :string, null: true
    add_column :rpush_apps, :team_id, :string, null: true
    add_column :rpush_apps, :bundle_id, :string, null: true
  end

  def self.down
    remove_column :rpush_apps, :apn_key
    remove_column :rpush_apps, :apn_key_id
    remove_column :rpush_apps, :team_id
    remove_column :rpush_apps, :bundle_id
  end
end
