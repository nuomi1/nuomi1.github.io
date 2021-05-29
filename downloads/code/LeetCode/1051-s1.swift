//
//  1051-s1.swift
//  LeetCode
//
//  Created by nuomi1 on 2021/5/15.
//

// Height Checker
// https://leetcode.com/explore/learn/card/fun-with-arrays/523/conclusion/3228/
// https://leetcode.com/problems/height-checker/

// 高度检查器
// https://leetcode-cn.com/problems/height-checker/

func heightChecker(_ heights: [Int]) -> Int {
    var buckets = Array(repeating: 0, count: 101)

    for height in heights {
        buckets[height] += 1
    }

    var result = 0
    var heightIndex = heights.startIndex

    for bucketIndex in buckets.indices.dropFirst() {
        while buckets[bucketIndex] > 0 {
            if heights[heightIndex] != bucketIndex {
                result += 1
            }

            heights.formIndex(after: &heightIndex)
            buckets[bucketIndex] -= 1
        }
    }

    return result
}
