class AddAttachmentAvatarToPresenter < ActiveRecord::Migration
  def self.up
    add_column :presenters, :avatar_file_name, :string
    add_column :presenters, :avatar_content_type, :string
    add_column :presenters, :avatar_file_size, :integer
    add_column :presenters, :avatar_updated_at, :datetime
  end

  def self.down
    remove_column :presenters, :avatar_file_name
    remove_column :presenters, :avatar_content_type
    remove_column :presenters, :avatar_file_size
    remove_column :presenters, :avatar_updated_at
  end
end
