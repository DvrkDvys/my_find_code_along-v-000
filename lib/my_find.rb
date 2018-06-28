require 'pry'

# def my_find(collection)

# end

def my_find(collection)
  i = 0
  while i < collection.length
    return collection[i] if yield(collection[i])
    i = i + 1
  end
end



# def my_find(array)
#   i = 0
#     while i < array.length
#       collection << yield(array[i])
#       i += 1
#     end
#     if yield(collection[i])
#       return collection[i]
#             i += 1
#   # collection
#   end
# end


#   it "yields the correct element to the block" do
#     yielded = []
#     my_find(collection) do |number|
#       yielded.push number
#     end
#     expect(yielded).to eq([1])
#   end

#   it "returns the elements from the array when the block condition is met" do
#     expect(my_find(collection) {|i| i % 3 == 0 && i % 5 == 0 }).to eq(15)
#   end
  
#   it "returns nil when the block condition is not met" do
#     expect(my_find(collection) {|i| i % 200 == 0}).to eq(nil)
#   end