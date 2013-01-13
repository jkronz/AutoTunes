require 'spec_helper'

describe "djs/show" do
  before(:each) do
    @dj = assign(:dj, stub_model(Dj,
      :code => "Code",
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Code/)
    rendered.should match(/Name/)
  end
end
