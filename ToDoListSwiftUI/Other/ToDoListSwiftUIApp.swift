//
//  ToDoListSwiftUIApp.swift
//  ToDoListSwiftUI
//
//  Created by Dmitrii Tikhomirov on 7/11/23.
//

import SwiftUI
import FirebaseCore

@main
struct ToDoListSwiftUIApp: App {
  
  init() {
    FirebaseApp.configure()
  }
  
  var body: some Scene {
    WindowGroup {
      MainView()
    }
  }
}
