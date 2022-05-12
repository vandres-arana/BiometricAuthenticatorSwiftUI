//
//  Title.swift
//  AuthenticatorDemo
//
//  Created by Victor Arana on 1/28/22.
//

import SwiftUI

struct Title: View {
    var body: some View {
        Text("Authenticator App")
            .bold()
            .font(.title)
            .foregroundColor(.black)
    }
}

struct Title_Previews: PreviewProvider {
    static var previews: some View {
        Title()
    }
}
