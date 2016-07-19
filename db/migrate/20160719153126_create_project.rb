class CreateProject < ActiveRecord::Migration
  def change
  		create_table :projects do |t|
              t.string :name
              t.string :date_created
              t.string :date_modified
              
              t.timestamps null: true
    end
  end
end
