//
//  328-e1.swift
//  LeetCode
//
//  Created by nuomi1 on 2021/5/26.
//

// Odd Even Linked List
// https://leetcode.com/explore/learn/card/linked-list/219/classic-problems/1208/
// https://leetcode.com/problems/odd-even-linked-list/

// 奇偶链表
// https://leetcode-cn.com/leetbook/read/linked-list/fe0kj/
// https://leetcode-cn.com/problems/odd-even-linked-list/

func oddEvenList(_ head: ListNode?) -> ListNode? {
    var oddNode = head
    var evenNode = head?.next

    let evenHead = evenNode

    while evenNode != nil, evenNode?.next != nil {
        oddNode?.next = evenNode?.next
        oddNode = oddNode?.next
        evenNode?.next = oddNode?.next
        evenNode = evenNode?.next
    }

    oddNode?.next = evenHead

    return head
}
