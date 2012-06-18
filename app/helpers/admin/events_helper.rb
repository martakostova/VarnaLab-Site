module Admin::EventsHelper
	def link_to_edit_event(resource)
    resource_title = resource.title
    link_to 'Edit', [:edit, :admin, resource], :title => "Edit '#{resource_title}' event"
  end
  def link_to_delete_event(resource, options = {})
    resource_title = resource.title

    attributes = {
      :title => "Delete '#{resource_title}' event",
      :remote => true,
      :method => :delete,
      :data => { :confirm => "Are you sure you want to delete #{resource_title}?" },
    }.merge(options)

    link_to 'Delete', [:admin, resource], attributes
  end
end
