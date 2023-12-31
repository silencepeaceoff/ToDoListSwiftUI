//
//  LoginView.swift
//  ToDoListSwiftUI
//
//  Created by Dmitrii Tikhomirov on 7/11/23.
//

import SwiftUI

struct LoginView: View {
  @StateObject var viewModel = LoginViewVM()

  var body: some View {
    NavigationView {
      VStack {
        HeaderView(title: "To Do List", subtitle: "Get Things Done", angle: 15, background: .pink)

        Form {
          if !viewModel.errorMessage.isEmpty {
            Text(viewModel.errorMessage)
              .foregroundColor(.red)
          }
          
          TextField("Email Address", text: $viewModel.email)
            .textFieldStyle(DefaultTextFieldStyle())
            .autocapitalization(.none)
            .autocorrectionDisabled()
          
          SecureField("Password", text: $viewModel.password)
            .textFieldStyle(DefaultTextFieldStyle())

          TLButton(
            title: "Log In",
            background: .blue
          ) {
            viewModel.login()
          }

        }
        .offset(y: -50)

        // Create Account
        VStack {
          Text("New around here?")

          NavigationLink("Create An Account", destination: RegisterView())
        }
        .padding(.bottom, 50)

        Spacer()
      }
    }
  }
}

struct LoginView_Previews: PreviewProvider {
  static var previews: some View {
    LoginView()
  }
}
