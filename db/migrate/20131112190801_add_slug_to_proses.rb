class AddSlugToProses < ActiveRecord::Migration
  def change
    add_column :proses, :slug, :string
  end
end
