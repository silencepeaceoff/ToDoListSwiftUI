//
//  ToDoListItemsView.swift
//  ToDoListSwiftUI
//
//  Created by Dmitrii Tikhomirov on 7/11/23.
//

import SwiftUI
import FirebaseFirestoreSwift

struct ToDoListView: View {
  @StateObject var viewModel: ToDoListViewVM
  @FirestoreQuery var items: [ToDoListItem]

  init(userId: String) {
    self._items = FirestoreQuery(
        collectionPath: "users/\(userId)/todos"
    )
    self._viewModel = StateObject(wrappedValue: ToDoListViewVM(userId: userId))
  }

    var body: some View {
      NavigationView {
        VStack {
          List(items) { item in
            ToDoListItemView(item: item)
              .swipeActions {
                Button(action: {
                  viewModel.delete(id: item.id)
                }, label: {
                  Label("Delete", systemImage: "trash")
                })
                .tint(.red)
              }
          }
          .listStyle(PlainListStyle())
        }
        .navigationTitle("To Do List")
        .toolbar {
          Button {
            viewModel.showingNewItemView = true
          } label: {
            Image(systemName: "plus")
          }
        }
        .sheet(isPresented: $viewModel.showingNewItemView) {
          NewItemView(newItemPresented: $viewModel.showingNewItemView)
        }
      }
    }
}

struct ToDoListItemsView_Previews: PreviewProvider {
    static var previews: some View {
      ToDoListView(userId: "YCear9kE3nd9TEgHB0IpAwLwOFr1")
    }
}
