module Admin::WidgetsHelper
	def link_to_edit_widget(resource)
    resource_name = resource.name
    link_to 'Edit', [:edit, :admin, resource], :title => "Edit '#{resource_name}' widget"
  end
  def link_to_delete_widget(resource, options = {})
    resource_name = resource.name

    attributes = {
      :title => "Delete '#{resource_name}' widget",
      :remote => true,
      :method => :delete,
      :data => { :confirm => "Are you sure you want to delete #{resource_name}?" },
    }.merge(options)

    link_to 'Delete', [:admin, resource], attributes
  end
  
end