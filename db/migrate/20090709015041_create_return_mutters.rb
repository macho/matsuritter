class CreateReturnMutters < ActiveRecord::Migration
  def self.up
    create_table :return_mutters do |t|
      t.integer :mutter_id ,:null => false
      t.boolean :delete_flg , :default  => 0
      t.timestamps
      t.integer :lock_version
    end
  end

  def self.down
    drop_table :return_mutters
  end
end
