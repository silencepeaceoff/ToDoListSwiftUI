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

        }
        .navigationTitle("Profile")
      }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
