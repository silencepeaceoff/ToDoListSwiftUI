//
//  TLButton.swift
//  ToDoListSwiftUI
//
//  Created by Dmitrii Tikhomirov on 7/11/23.
//

import SwiftUI

struct TLButton: View {
  let title: String
  let background: Color
  let action: () -> Void

    var body: some View {
      Button {
        action()
      } label: {
        ZStack {
          RoundedRectangle(cornerRadius: 10)
            .foregroundColor(background)

          Text(title)
            .foregroundColor(.white)
            .bold()
        }
      }
      .padding()
    }
}

struct TLButton_Previews: PreviewProvider {
    static var previews: some View {
      TLButton(title: "Title", background: .pink) {
        // Action
      }
    }
}
