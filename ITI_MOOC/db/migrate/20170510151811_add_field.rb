class AddField < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :dob, :datetime
    add_column :users, :profile_pic, :string
    add_column :users, :super_user, :string

  end
end
