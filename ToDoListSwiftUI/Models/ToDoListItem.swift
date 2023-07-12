//
//  ToDoListItem.swift
//  ToDoListSwiftUI
//
//  Created by Dmitrii Tikhomirov on 7/11/23.
//

import Foundation

struct ToDoListItem: Codable, Identifiable {
  let id: String
  let title: String
  let dueDate: TimeInterval
  let createDate: TimeInterval
  var isDone: Bool

  mutating func setDone(_ state: Bool) {
    isDone = state
  }
}
