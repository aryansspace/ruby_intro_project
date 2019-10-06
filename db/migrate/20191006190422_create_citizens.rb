class CreateCitizens < ActiveRecord::Migration[6.0]
  def change
    create_table :citizens do |t|
      t.string :name
      t.string :citizenship
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
