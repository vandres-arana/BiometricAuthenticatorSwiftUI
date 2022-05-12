//
//  HomeView.swift
//  AuthenticatorDemo
//
//  Created by Victor Arana on 1/28/22.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var authenticationManager: AuthenticationManager
    
    var body: some View {
        VStack(spacing: 40) {
            Title()
            
            Text("Welcome! You are now authenticated.")
            
            PrimaryButton(showImage: false, text: "Logout")
                .onTapGesture {
                    authenticationManager.logout()
                }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().environmentObject(AuthenticationManager())
    }
}
