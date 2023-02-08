# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-08 22:47
# FilePath: P0706. 设计哈希映射.rb
# Description:

load "common/leetcode.rb"

class MyHashMap
    def initialize
        @hash = [-1] * 1000001
    end

=begin
    :type key: Integer
    :type value: Integer
    :retype: Void
=end
    def put(key, value)
        @hash[key] = value
    end

=begin
    :type key: Integer
    :retype: Integer
=end
    def get(key)
        @hash[key]
    end

=begin
    :type key: Integer
    :retype: Void
=end
    def remove(key)
        @hash[key] = -1
    end
end

# Your MyHashMap object will be instantiated and called as such:
# obj = MyHashMap.new()
# obj.put(key, value)
# param_2 = obj.get(key)
# obj.remove(key)
#
if __FILE__ == $PROGRAM_NAME
    my_hash_map = MyHashMap.new
    p my_hash_map.frozen?
    my_hash_map.put(1, 1) #  myHashMap 现在为 [[1,1]]
    my_hash_map.put(2, 2) #  myHashMap 现在为 [[1,1], [2,2]]
    my_hash_map.get(1)   #  返回 1 ，myHashMap 现在为 [[1,1], [2,2]]
    my_hash_map.get(3)   #  返回 -1（未找到），myHashMap 现在为 [[1,1], [2,2]]
    my_hash_map.put(2, 1) #  myHashMap 现在为 [[1,1], [2,1]]（更新已有的值）
    my_hash_map.get(2)   #  返回 1 ，myHashMap 现在为 [[1,1], [2,1]]
    my_hash_map.remove(2) #  删除键为 2 的数据，myHashMap 现在为 [[1,1]]
    my_hash_map.get(2)    #  返回 -1（未找到），myHashMap 现在为 [[1,1]]
end


