//
//  1-e2.swift
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

// MARK: Two-pass Hash Table

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    typealias Element = Int
    typealias Index = Array<Element>.Index

    // 转换数组到 [下标: 元素] 的字典
    let positions = nums.indices.reduce(into: [Index: Element]()) {
        $0[nums[$1]] = $1
    }

    // 在字典中找到另一个加数，两者下标不相同则输出
    for currentIndex in nums.indices {
        let another = target - nums[currentIndex]
        if let anotherIndex = positions[another], currentIndex != anotherIndex {
            return [currentIndex, anotherIndex]
        }
    }

    fatalError()
}
