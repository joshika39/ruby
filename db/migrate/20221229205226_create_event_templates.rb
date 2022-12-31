class CreateEventTemplates < ActiveRecord::Migration[7.0]
  def change
    create_table :event_templates do |t|
      t.string :name
      t.integer :youngest
      t.integer :oldest

      t.timestamps
    end
  end
end
