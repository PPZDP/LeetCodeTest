//
//  LinkedList_21.swift
//  LeetCodeTest_iOS
//
//  Created by sos1a2a3a on 2020/1/3.
//  Copyright © 2020 lijiarui. All rights reserved.
//

import UIKit
///https://leetcode-cn.com/problems/merge-two-sorted-lists/
class LinkedList_21: NSObject {
    
    
    func mergeTwoLists2(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil {
            return l2
        }
        if l2 == nil {
            return l1
        }
        
        let newHead = ListNode(0)
        
        var res = newHead
        var newl1 = l1
        var newl2 = l2
        while newl1 != nil && newl2 != nil {
            if newl1!.val > newl2!.val {
                res.next = newl2
                res = res.next!
                newl2 = newl2?.next
            }
            else{
                res.next = newl1
                res = res.next!
                newl1 = newl1?.next
            }
            
        }
        
        if newl1 == nil {
            res.next = newl2
        }
        else{
            res.next = newl1
        }
        return newHead.next
        
    }
    
    
    
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil {
            return l2
        }
        if l2 == nil {
            return l1
        }
        
        var res :ListNode?
        
        if l1!.val >= l2!.val {
            res = l2
            res?.next = mergeTwoLists(l1, l2?.next)
        }
        else {
            res = l1
            res?.next = mergeTwoLists(l1?.next, l2)
            
        }
        
        return res
        
    }
}
