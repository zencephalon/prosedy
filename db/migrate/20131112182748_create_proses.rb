class CreateProses < ActiveRecord::Migration
  def change
    create_table :proses do |t|
      t.string :title
      t.string :text

      t.timestamps
    end
  end
end
