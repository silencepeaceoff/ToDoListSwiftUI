//
//  LoginViewVM.swift
//  ToDoListSwiftUI
//
//  Created by Dmitrii Tikhomirov on 7/11/23.
//

import Foundation
import FirebaseAuth

class LoginViewVM: ObservableObject {
  @Published var email = ""
  @Published var password = ""
  @Published var errorMessage = ""

  init() {

  }

  func login() {
    guard validate() else { return }

    Auth.auth().signIn(withEmail: email, link: password)
  }

  private func validate() -> Bool {
    errorMessage = ""
    guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
            !password.trimmingCharacters(in: .whitespaces).isEmpty
    else {
      errorMessage = "Please fill all fields."
      return false
    }

    guard email.contains("@") && email.contains(".")
    else {
      errorMessage = "Please enter valid email."
      return false
    }

    return true
  }

}
