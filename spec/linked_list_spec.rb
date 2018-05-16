require 'rspec'
require "./lib/linked_list"
require "./lib/node"

Rspec.describe LinkedList, type: :model do
  before(:each) do
    ll = LinkedList.new
  end
  describe "attributes" do
    it "has head" do
      expect(ll.head).to be_nil
    end
  end
  describe "intance methods" do
    describe "#append" do
      ll.append(5)
      expect(ll.head.data).to eq(5)
    end
  end
end
