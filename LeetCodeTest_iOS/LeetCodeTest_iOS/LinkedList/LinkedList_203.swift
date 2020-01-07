//
//  LinkedList_203.swift
//  LeetCodeTest_iOS
//
//  Created by sos1a2a3a on 2020/1/4.
//  Copyright © 2020 lijiarui. All rights reserved.
//

import UIKit
///https://leetcode-cn.com/problems/remove-linked-list-elements/
class LinkedList_203: NSObject {
      func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {

          let newNode = ListNode(0)
          
          
          var tempNode = newNode
          
          var nextNode = head
          
          while nextNode != nil   {
              if nextNode?.val == val {
                  nextNode = nextNode?.next
              }
              else{
                  
                  let lsNode = ListNode(nextNode!.val)
                  
                  tempNode.next = lsNode
                  nextNode = nextNode?.next
                  tempNode = tempNode.next!
              }
              
          }
          
          return newNode.next
          
          
      }
}
