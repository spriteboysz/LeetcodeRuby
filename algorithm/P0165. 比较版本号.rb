# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-11 17:35
# FilePath: P0165. 比较版本号.rb
# Description:

load "common/leetcode.rb"

# @param {String} version1
# @param {String} version2
# @return {Integer}
def compare_version(version1, version2)
    nums1, nums2 = version1.split(".").map(&:to_i), version2.split(".").map(&:to_i)
    minimum = [nums1.length, nums2.length].min
    (0...minimum).each { |i|
        if nums1[i] < nums2[i]
            return -1
        elsif nums1[i] > nums2[i]
            return 1
        end
    }
    return 1 if nums1.length > minimum && nums1[minimum..nums1.length - 1].any? { |num| num > 0 }
    return -1 if nums2.length > minimum && nums2[minimum..nums2.length - 1].any? { |num| num > 0 }
    0
end

if __FILE__ == $PROGRAM_NAME
    p compare_version(version1 = "1.01", version2 = "1.001")
end


