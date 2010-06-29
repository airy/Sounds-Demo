class CreateSounds < ActiveRecord::Migration
  def self.up
    create_table :sounds do |t|
      t.references :user
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :sounds
  end
end
