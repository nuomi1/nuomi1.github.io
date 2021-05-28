//
//  283-e3.swift
//  LeetCode
//
//  Created by nuomi1 on 2018/12/24.
//  Updated by nuomi1 on 2021/5/12.
//

// Move Zeroes
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/567/
// https://leetcode.com/explore/learn/card/fun-with-arrays/511/in-place-operations/3157/
// https://leetcode.com/problems/move-zeroes/

// 移动零
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/x2ba4i/
// https://leetcode-cn.com/problems/move-zeroes/

// MARK: Optimal

func moveZeroes(_ nums: inout [Int]) {
    var leftIndex = nums.startIndex

    // 把非零项移动到前方，后方即为零项
    for rightIndex in nums.indices {
        if nums[rightIndex] != 0 {
            nums.swapAt(rightIndex, leftIndex)
            nums.formIndex(after: &leftIndex)
        }
    }
}
