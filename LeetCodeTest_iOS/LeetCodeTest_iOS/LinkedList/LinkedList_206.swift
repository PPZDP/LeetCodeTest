//
//  LinkedList_206.swift
//  LeetCodeTest_iOS
//
//  Created by sos1a2a3a on 2019/12/28.
//  Copyright © 2019 lijiarui. All rights reserved.
//

import UIKit

/// https://leetcode-cn.com/problems/reverse-linked-list/submissions/
class LinkedList_206: NSObject {
    
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        let newListNode = reverseList(head?.next)
        head?.next?.next = head
        head?.next = nil
        return newListNode
    }
    
    func reverseList2(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        var nowHead = head
        //  声明一个newHead 空的 指向 nil
        var newHead :ListNode? = nil
        while nowHead != nil {
            //声明一个临时 指向 head 的 next
            let temp:ListNode? = nowHead?.next
            //head.next 指向 newHead
            nowHead?.next = newHead
            //newHead 指向 之前的 head
            newHead = nowHead
            //head 指向 head.next
            nowHead = temp
        }
        return newHead
    }
}
