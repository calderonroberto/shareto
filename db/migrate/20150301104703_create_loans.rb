class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.references :thing, index: true

      t.timestamps
    end
  end
end
