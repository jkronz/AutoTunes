require 'spec_helper'

describe "djs/new" do
  before(:each) do
    assign(:dj, stub_model(Dj,
      :code => "MyString",
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new dj form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => djs_path, :method => "post" do
      assert_select "input#dj_code", :name => "dj[code]"
      assert_select "input#dj_name", :name => "dj[name]"
    end
  end
end
