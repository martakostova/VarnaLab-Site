# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(:email => 'asd@asd.asd', :password => 'asdasd', :password_confirmation => 'asdasd', :name => 'asd')

members_page = Page.create(:name => 'Members', :content => 'Here will be shown some Varna Lab members', :blogpost => false, :commentable => false)
Page.create(:name => 'Boris Filipov', :content => 'Meet Boris ..', :blogpost => false, :parent_id => members_page.id)
Page.create(:name => 'John Doe', :content => 'Meet John ..', :blogpost => false, :parent_id => members_page.id)
Page.create(:name => 'Chuck Noris', :content => 'Meet Chuck ..', :blogpost => false, :parent_id => members_page.id)

blog_page = Page.create(:name => 'Blog', :content => 'Our amazing Blog especially for you!', :blogpost => false, :commentable => false)
Page.create(:name => 'Hello world', :content => 'Hello there ..', :parent_id => blog_page.id, :blogpost => true)
Page.create(:name => 'blogpost 10/12', :content => 'what happened ..', :parent_id => blog_page.id, :blogpost => true)
Page.create(:name => 'blogpost 11/12', :content => 'what happened ..', :parent_id => blog_page.id, :blogpost => true)

events_page = Page.create(:name => 'Events', :content => 'List of our projects', :blogpost => false, :commentable => false)
Event.create(:title => 'Nodejs Course session #1', :body => 'meet node js and socket io ..', :date => DateTime.now-5.days, :place => 'Varna lab')
Event.create(:title => 'Nodejs Course session #2', :body => 'meet mongodb', :date => DateTime.now, :place => 'Varna lab')
Event.create(:title => 'Nodejs Course session #3', :body => 'make a real time game', :date => DateTime.now+5.days, :place => 'Varna lab')