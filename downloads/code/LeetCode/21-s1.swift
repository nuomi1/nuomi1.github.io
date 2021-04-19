//
//  21-s1.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/1/9.
//

// Merge Two Sorted Lists
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/93/linked-list/771/
// https://leetcode.com/problems/merge-two-sorted-lists/

// 合并两个有序链表
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnnbp2/
// https://leetcode-cn.com/problems/merge-two-sorted-lists/

func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    guard l1 != nil, l2 != nil else {
        return l1 ?? l2
    }

    var l3: ListNode?

    var p1: ListNode? = l1
    var p2: ListNode? = l2
    var p3: ListNode? = ListNode(0)

    while p1 != nil, p2 != nil {
        if p1!.val > p2!.val {
            p3?.next = p2
            p2 = p2?.next
        } else {
            p3?.next = p1
            p1 = p1?.next
        }

        // 跳过第一个无用结点
        if l3 == nil {
            l3 = p3?.next
        }

        p3 = p3?.next
    }

    if p1 != nil {
        p3?.next = p1
    }

    if p2 != nil {
        p3?.next = p2
    }

    return l3
}
