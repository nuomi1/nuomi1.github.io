//
//  350-c1.swift
//  LeetCode
//
//  Created by nuomi1 on 2018/12/22.
//

// Intersection of Two Arrays II
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/674/
// https://leetcode.com/problems/intersection-of-two-arrays-ii/

// 两个数组的交集 II
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/x2y0c2/
// https://leetcode-cn.com/problems/intersection-of-two-arrays-ii/

// MARK: 哈希表

func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var counts = [Int: Int]()
    var result = [Int]()

    // 记录 nums1 数组元素出现的次数
    for num in nums1 {
        counts[num, default: 0] += 1
    }

    // 当元素同时存在于两个数组时记录，并减去一次计数
    for num in nums2 {
        if counts[num, default: 0] > 0 {
            result.append(num)
            counts[num, default: 0] -= 1
        }
    }

    return result
}
