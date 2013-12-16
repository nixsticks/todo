require_relative "using_blocks_refactoring_solution"

describe 'refactoring' do

  describe 'original methods with pay_by intercepted' do
    before :each do
      @order = double :order
      stub!(:pay_by)
    end
  
    it 'should invoke nothing for pay_by_visa' do
      ccn = double :ccn
      pay_by_visa @order , ccn
    end
  
    it 'should invoke nothing for pay_by_check' do
      pay_by_check @order
    end
  
    it 'should invoke nothing for pay_by_cash' do
      pay_by_cash @order
    end 
  
    it 'should invoke nothing for pay_by_store_credit' do
      current_user = double :current_user
      pay_by_store_credit @order , current_user
    end
  end
  
  
  describe 'pay_by' do
    it 'should have a method pay_by that receives the order, computes boiler plate code, and invokes the block' do
      @order = double :order
      @order.should_receive(:compute_cost).once
      @order.should_receive(:compute_shipping).once
      @order.should_receive(:compute_tax).once
      @order.should_receive(:ship_goods).once
      block_called = double(:block_called)
      block_called.should_receive :block_was_called
      yielded = []
      pay_by @order do |order|
        yielded << order
        block_called.block_was_called
      end
      yielded.should eq([@order])
    end
  end
  
end