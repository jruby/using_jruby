
describe "Account" do 
  it "should be possible to mock an account" do 
    mock_account = mock("An account")
    another_account = mock("Another account")

    mock_account.should_receive(:transfer).
      with({:to => another_account, :amount => 500}).
      and_return(true)
    
    mock_account.transfer(:to => another_account,
                          :amount => 500).should be_true
  end

  it "should be possible to stub an account" do 
    stub_account = stub("An account", :balance => 42)

    stub_account.balance.should == 42
  end
end
