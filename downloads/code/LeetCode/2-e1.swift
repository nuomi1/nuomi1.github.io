//
//  2-e1.swift
//  LeetCode
//
//  Created by nuomi1 on 2021/5/30.
//

// Add Two Numbers
// https://leetcode.com/explore/learn/card/linked-list/213/conclusion/1228/
// https://leetcode.com/problems/add-two-numbers/

// 两数相加
// https://leetcode-cn.com/leetbook/read/linked-list/fv6w7/
// https://leetcode-cn.com/problems/add-two-numbers/

// MARK: Elementary Math

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    let list3: ListNode? = ListNode(0)

    var node1 = l1
    var node2 = l2
    var node3 = list3

    var quotient: Int = 0
    var remainder: Int = 0

    while node1 != nil || node2 != nil {
        let sum = (node1?.val ?? 0) + (node2?.val ?? 0) + quotient
        (quotient, remainder) = sum.quotientAndRemainder(dividingBy: 10)

        node3?.next = ListNode(remainder)

        node1 = node1?.next
        node2 = node2?.next
        node3 = node3?.next
    }

    if quotient > 0 {
        node3?.next = ListNode(quotient)
    }

    return list3?.next
}
