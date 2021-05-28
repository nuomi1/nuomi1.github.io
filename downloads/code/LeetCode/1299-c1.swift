//
//  1299-c1.swift
//  LeetCode
//
//  Created by nuomi1 on 2021/5/10.
//

// Replace Elements with Greatest Element on Right Side
// https://leetcode.com/explore/learn/card/fun-with-arrays/511/in-place-operations/3259/
// https://leetcode.com/problems/replace-elements-with-greatest-element-on-right-side/

// 将每个元素替换为右侧最大元素
// https://leetcode-cn.com/problems/replace-elements-with-greatest-element-on-right-side/

// MARK: 逆序遍历

func replaceElements(_ arr: [Int]) -> [Int] {
    var result = arr
    var index = result.index(before: result.endIndex)

    result[index] = -1
    result.formIndex(before: &index)

    while index >= result.startIndex {
        let nextIndex = result.index(after: index)
        result[index] = max(result[nextIndex], arr[nextIndex])
        result.formIndex(before: &index)
    }

    return result
}
