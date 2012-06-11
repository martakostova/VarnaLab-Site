module Admin::UsersHelper
  def link_to_edit_user(resource)
    resource_name = resource.name
    link_to 'Edit', [:edit, :admin, resource], :title => "Edit '#{resource_name}' user"
  end
  def link_to_delete_user(resource, options = {})
    resource_name = resource.name

    attributes = {
      :title => "Delete '#{resource_name}' user",
      :remote => true,
      :method => :delete,
      :confirm => "Are you sure you want to delete #{resource_name}?",
    }.merge(options)

    link_to 'Delete', [:admin, resource], attributes
  end
end