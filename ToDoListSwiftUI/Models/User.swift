//
//  User.swift
//  ToDoListSwiftUI
//
//  Created by Dmitrii Tikhomirov on 7/11/23.
//

import Foundation

struct User: Codable {
  let id: String
  let name: String
  let email: String
  let joined: TimeInterval
}
