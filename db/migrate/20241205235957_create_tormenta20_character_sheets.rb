class CreateTormenta20CharacterSheets < ActiveRecord::Migration[8.0]
  def change
    create_table :tormenta20_character_sheets do |t|
      t.string :name
      t.text :description
      t.jsonb :data
      t.jsonb :temp
      t.integer :creation_step
      t.boolean :levelling_up

      t.timestamps
    end
  end
end
