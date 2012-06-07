module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /^the ([a-z]+) admin comments page$/
      admin_comments_path(:review => $1)
    when /^the "([^"]+)" page$/
      page_path(Page.find_by_name! $1)
    when /^the home\s?page$/
      '/'
    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))
    when  /^the "([^"]+)" admin event$/
      admin_event_path(Event.find_by_title!($1))
    when /^the "([^"]+)" admin page$/
      admin_page_path(Page.find_by_name!($1))
    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
