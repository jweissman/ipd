class CreateDilemmas < ActiveRecord::Migration
  def change
    create_table :dilemmas do |t|
      t.timestamps null: false
    end
  end
end
