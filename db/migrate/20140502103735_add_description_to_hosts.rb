class AddDescriptionToHosts < ActiveRecord::Migration
  def change
    add_column :hosts, :description, :string
  end
end
