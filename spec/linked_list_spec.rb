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

    describe "#prepend" do
      it "prepends data to list" do
        5.times do
          @ll.append(5)
        end

        expect(@ll.head.data).to eq(5)

        @ll.prepend(3)

        expect(@ll.head.data).to eq(3)
      end
    end

    describe "#insert" do
      it "inserts node into linked list" do
        5.times do
          @ll.append(5)
        end

        @ll.insert(2, 3)

        expect(@ll.head.next_node.next_node.data).to eq(3)

        @ll.insert(1, 4)

        expect(@ll.head.next_node.data).to eq(4)
      end
    end
  end
end
