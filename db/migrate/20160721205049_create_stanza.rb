class CreateStanza < ActiveRecord::Migration
  def change
  	create_table :stanzas do |t|
              t.string :chord
              t.string :lyrics
              t.string :section
              
              t.timestamps null: true

    end
    add_reference :stanzas, :project
  end
end
