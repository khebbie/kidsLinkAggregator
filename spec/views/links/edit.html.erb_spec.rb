require 'spec_helper'

describe "links/edit.html.erb" do
  before(:each) do
    @link = assign(:link, stub_model(Link,
      :new_record? => false,
      :name => "MyString",
      :approved => false,
      :url => "MyString",
      :category_id => 1
    ))
  end

  it "renders the edit link form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => link_path(@link), :method => "post" do
      assert_select "input#link_name", :name => "link[name]"
      assert_select "input#link_approved", :name => "link[approved]"
      assert_select "input#link_url", :name => "link[url]"
      assert_select "input#link_category_id", :name => "link[category_id]"
    end
  end
end
