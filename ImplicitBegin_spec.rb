require 'rspec'

describe 'My behaviour' do

  it 'should do something' do
    a = 5
    b = 0
    a / b
    rescue

    true.should == false
  end
end