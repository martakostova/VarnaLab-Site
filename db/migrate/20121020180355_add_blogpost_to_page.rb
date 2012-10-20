class AddBlogpostToPage < ActiveRecord::Migration
  def change
    add_column :pages, :blogpost, :boolean, :null => false, :default => true
  end
end
