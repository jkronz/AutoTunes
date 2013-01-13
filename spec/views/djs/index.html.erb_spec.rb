require 'spec_helper'

describe "djs/index" do
  before(:each) do
    assign(:djs, [
      stub_model(Dj,
        :code => "Code",
        :name => "Name"
      ),
      stub_model(Dj,
        :code => "Code",
        :name => "Name"
      )
    ])
  end

  it "renders a list of djs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
