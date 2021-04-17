class RenameProfileIntroColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :profile_intro, :introduction
  end
end
