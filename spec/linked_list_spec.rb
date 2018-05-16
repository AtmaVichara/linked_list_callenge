require 'rspec'
require "./lib/linked_list"
require "./lib/node"
require "pry"

describe LinkedList, type: :model do
  describe "attributes" do
    it "has head" do
      ll = LinkedList.new
      expect(ll.head).to be_nil
    end
  end
  describe "intance methods" do

    before(:each) do
      @ll = LinkedList.new
    end

    describe "#append" do
      it "appends items to node" do
        @ll.append(5)
        expect(@ll.head.data).to eq(5)
      end
    end

    describe "#count" do
      it "counts all items in linked list" do
        5.times do
          @ll.append(5)
        end

        expect(@ll.count).to eq(5)
      end
    end

    describe "#to_s" do
      it "returns data" do
        @ll.append(5)

        expect(@ll.to_s).to eq("5")

        @ll.append(10)

        expect(@ll.to_s).to eq("15")
      end
    end
  end
end
