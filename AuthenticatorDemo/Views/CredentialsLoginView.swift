//
//  CredentialsLoginView.swift
//  AuthenticatorDemo
//
//  Created by Victor Arana on 1/28/22.
//

import SwiftUI

struct CredentialsLoginView: View {
    @EnvironmentObject var authenticationManager: AuthenticationManager
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        VStack(spacing: 40) {
            Title()
            
            TextField("Username", text: $username)
                .padding(.leading, 20)
                .padding(.trailing, 20)
                
            SecureField("Password", text: $password)
                .padding(.leading, 20)
                .padding(.trailing, 20)
            
            PrimaryButton(showImage: false, text: "Login")
                .onTapGesture {
                    authenticationManager.authenticateWithCredentials(username: username, password: password)
                }
        }
        .textFieldStyle(.roundedBorder)
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct CredentialsLoginView_Previews: PreviewProvider {
    static var previews: some View {
        CredentialsLoginView()
            .environmentObject(AuthenticationManager())
    }
}
