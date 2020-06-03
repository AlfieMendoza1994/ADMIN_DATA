class CreateMalaysiaCounterPartyLists < ActiveRecord::Migration[5.1]
  def change
    create_table :malaysia_counter_party_lists do |t|
      t.string :security_type
      t.string :eight_bic
      t.string :eleven_bic
      t.string :name
      t.string :former_name
      t.string :former_cp_code
      t.string :former_bic
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
