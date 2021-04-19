//
//  1-e1.swift
//  LeetCode
//
//  Created by nuomi1 on 2018/12/25.
//

// Two Sum
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/546/
// https://leetcode.com/problems/two-sum/

// 两数之和
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/x2jrse/
// https://leetcode-cn.com/problems/two-sum/

// MARK: Brute Force

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    for leftIndex in nums.indices.dropLast() {
        let distance = nums.distance(from: nums.startIndex, to: nums.index(after: leftIndex))
        for rightIndex in nums.indices.dropFirst(distance) {
            // 依次判断剩余数组元素是否符合
            if nums[leftIndex] + nums[rightIndex] == target {
                return [leftIndex, rightIndex]
            }
        }
    }

    fatalError()
}
