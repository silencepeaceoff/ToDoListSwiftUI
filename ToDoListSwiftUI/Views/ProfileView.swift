//
//  ProfileView.swift
//  ToDoListSwiftUI
//
//  Created by Dmitrii Tikhomirov on 7/11/23.
//

import SwiftUI

struct ProfileView: View {
  @StateObject var viewModel = ProfileViewVM()

  var body: some View {
    NavigationView {
      VStack {
        if let user = viewModel.user {
          profile(user: user)
        }
        else {
          Text("Loading profile…")
        }
      }
      .navigationTitle("Profile")
    }
    .onAppear {
      viewModel.fetchUser()
    }
  }

  @ViewBuilder
  func profile(user: User) -> some View {
    Form {
      // Avatar
      Image(systemName: "person.circle")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .foregroundColor(.blue)
        .frame(width: 150, height: 150)

      HStack {
        Text("Name:")
          .font(.headline)

        Text(user.name)
      }

      HStack {
        Text("Email:")
          .font(.headline)

        Text(user.email)
      }

      HStack {
        Text("Member since:")
          .font(.headline)

        Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
      }

      TLButton(title: "Log Out", background: .red) {
        viewModel.logOut()
      }
      .padding()
    }
    .padding(.top)

  }
}

struct ProfileView_Previews: PreviewProvider {
  static var previews: some View {
    ProfileView()
  }
}
