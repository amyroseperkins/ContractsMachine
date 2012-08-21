class CreateAltProvs < ActiveRecord::Migration
  def self.up
    create_table :alt_provs do |t|
      t.text :legal_language
      t.string :simple_description
      t.integer :contract_id
      t.integer :parent_id

      t.timestamps
    end
  end

  def self.down
    drop_table :alt_provs
  end
end
