require 'spec_helper'

describe "links/new.html.erb" do
  before(:each) do
    assign(:link, stub_model(Link,
      :name => "MyString",
      :approved => false,
      :url => "MyString",
      :category_id => 1
    ).as_new_record)
  end

  it "renders new link form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => links_path, :method => "post" do
      assert_select "input#link_name", :name => "link[name]"
      assert_select "input#link_approved", :name => "link[approved]"
      assert_select "input#link_url", :name => "link[url]"
      assert_select "input#link_category_id", :name => "link[category_id]"
    end
  end
end
