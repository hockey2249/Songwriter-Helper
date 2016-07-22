class CreateProject < ActiveRecord::Migration
  def change
  		create_table :projects do |t|
              t.string :name
              t.string :collaborators
              t.string :genre
              
              t.timestamps null: true
    end
  end
end
