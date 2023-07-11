//
//  ToDoListItemsView.swift
//  ToDoListSwiftUI
//
//  Created by Dmitrii Tikhomirov on 7/11/23.
//

import SwiftUI

struct ToDoListView: View {
  @StateObject var viewModel = ToDoListViewVM()

  private let userId: String

  init(userId: String) {
    self.userId = userId
  }

    var body: some View {
      NavigationView {
        VStack {

        }
        .navigationTitle("To Do List")
        .toolbar {
          Button {
            #warning("Add Action")
          } label: {
            Image(systemName: "plus")
          }
        }
      }
    }
}

struct ToDoListItemsView_Previews: PreviewProvider {
    static var previews: some View {
      ToDoListView(userId: "")
    }
}
