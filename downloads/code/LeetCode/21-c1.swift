//
//  21-c1.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/1/9.
//  Updated by nuomi1 on 2021/5/29.
//

// Merge Two Sorted Lists
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/93/linked-list/771/
// https://leetcode.com/explore/learn/card/linked-list/213/conclusion/1227/
// https://leetcode.com/problems/merge-two-sorted-lists/

// 合并两个有序链表
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnnbp2/
// https://leetcode-cn.com/leetbook/read/linked-list/fnzd1/
// https://leetcode-cn.com/problems/merge-two-sorted-lists/

// MARK: 递归

func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    guard let list1 = l1, let list2 = l2 else {
        return l1 ?? l2
    }

    let list3: ListNode?

    if list1.val > list2.val {
        list3 = list2
        list3?.next = mergeTwoLists(list1, list2.next)
    } else {
        list3 = list1
        list3?.next = mergeTwoLists(list1.next, list2)
    }

    return list3
}
