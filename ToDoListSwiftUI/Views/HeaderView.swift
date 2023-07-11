//
//  HeaderView.swift
//  ToDoListSwiftUI
//
//  Created by Dmitrii Tikhomirov on 7/11/23.
//

import SwiftUI

struct HeaderView: View {
  let title: String
  let subtitle: String
  let angle: Double
  let background: Color

  var body: some View {
    ZStack {
      RoundedRectangle(cornerRadius: 0)
        .foregroundColor(background)
        .rotationEffect(.degrees(angle))

      VStack {
        Text(title)
          .font(.largeTitle)
          .fontWeight(.bold)
          .foregroundColor(.white)

        Text(subtitle)
          .font(.title)
          .fontWeight(.regular)
          .foregroundColor(.white)
      }
      .padding(.top, 60)

    }
    .frame(width: UIScreen.main.bounds.width * 3, height: 330)
    .offset(y: -130)

  }
}

struct HeaderView_Previews: PreviewProvider {
  static var previews: some View {
    HeaderView(title: "Title", subtitle: "Subtitle", angle: 15, background: .blue)
  }
}
