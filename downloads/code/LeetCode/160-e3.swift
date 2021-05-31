//
//  160-e3.swift
//  LeetCode
//
//  Created by nuomi1 on 2021/5/22.
//

// Intersection of Two Linked Lists
// https://leetcode.com/explore/learn/card/linked-list/214/two-pointer-technique/1215/
// https://leetcode.com/problems/intersection-of-two-linked-lists/

// 相交链表
// https://leetcode-cn.com/leetbook/read/linked-list/jjbj2/
// https://leetcode-cn.com/problems/intersection-of-two-linked-lists/

// MARK: Two Pointers

func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
    var nodeA = headA
    var nodeB = headB

    while nodeA !== nodeB {
        nodeA = nodeA == nil ? headB : nodeA?.next
        nodeB = nodeB == nil ? headA : nodeB?.next
    }

    return nodeA
}
