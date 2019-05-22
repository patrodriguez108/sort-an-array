# @param {Integer[]} nums
# @return {Integer[]}
def sort_array(nums)
  # nums.sort_by { |s| s }

  # go through array
  # find element with least value
  # place element with least value into new array
  # go through array again
  array = []

  until nums.length == 0

    nums.map do |num|
      if array.empty?
        if num == nums.min
          array << num
          nums.delete(num)
        end
      else
        if num >= array[0]
          array << num
          nums.delete(num)
        end
      end
    end
  end

  p array
end

sort_array([5,2,3,1])

# output: [1,2,3,5]

# sort_array([5,1,1,2,0,0])

# output: [0,0,1,1,2,5]