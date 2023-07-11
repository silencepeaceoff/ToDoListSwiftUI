//
//  MainViewVM.swift
//  ToDoListSwiftUI
//
//  Created by Dmitrii Tikhomirov on 7/11/23.
//

import Foundation
import FirebaseAuth

class MainViewVM: ObservableObject {
  @Published var currentUserId = ""
  private var handler: AuthStateDidChangeListenerHandle?

  init() {
    self.handler = Auth.auth().addStateDidChangeListener { [weak self] _, user in
      DispatchQueue.main.async {
        self?.currentUserId = user?.uid ?? ""
      }
    }
  }

  public var isSignedIn: Bool {
    return Auth.auth().currentUser != nil
  }
}
