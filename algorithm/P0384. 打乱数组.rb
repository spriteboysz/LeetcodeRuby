# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-20 22:14
# FilePath: P0384. 打乱数组.rb
# Description:

load "common/leetcode.rb"

class Solution

=begin
    :type nums: Integer[]
=end
    def initialize(nums)
        @nums = nums
    end

=begin
    :rtype: Integer[]
=end
    def reset
        @nums
    end

=begin
    :rtype: Integer[]
=end
    def shuffle
        @nums.shuffle
    end

end

if __FILE__ == $PROGRAM_NAME
    obj = Solution.new([1, 2, 3])
    p obj.reset
    p obj.shuffle
    p obj.shuffle
    p obj.reset
end


