//
//  ToDoListItemView.swift
//  ToDoListSwiftUI
//
//  Created by Dmitrii Tikhomirov on 7/11/23.
//

import SwiftUI

struct ToDoListItemView: View {
  @StateObject var viewModel = ToDoListItemViewVM()
  let item: ToDoListItem

    var body: some View {
      HStack {
        VStack(alignment: .leading) {
          Text(item.title)
            .font(.body)

          Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))")
            .font(.footnote)
            .foregroundColor(.secondary)
        }

        Spacer()

        Button {
          viewModel.toggleIsDone(item: item)
        } label: {
          Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle")
            .foregroundColor(.blue)
        }

      }
    }
}

struct ToDoListItemView_Previews: PreviewProvider {
  static var previews: some View {
    ToDoListItemView(item: .init(
      id: "123",
      title: "Get Milk",
      dueDate: Date().timeIntervalSince1970,
      createDate: Date().timeIntervalSince1970,
      isDone: false)
    )
  }
}
