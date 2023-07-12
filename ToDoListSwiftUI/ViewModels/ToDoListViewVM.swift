//
//  ToDoListViewVM.swift
//  ToDoListSwiftUI
//
//  Created by Dmitrii Tikhomirov on 7/11/23.
//

import Foundation
import FirebaseFirestore

class ToDoListViewVM: ObservableObject {
  @Published var showingNewItemView = false

  private let userId: String

  init(userId: String) {
    self.userId = userId
  }

  /// Delete todo list item
  /// - Parameter id: Item to delete
  func delete(id: String) {
    let db = Firestore.firestore()
    db.collection("users")
      .document(userId)
      .collection("todos")
      .document(id)
      .delete()
  }

}
