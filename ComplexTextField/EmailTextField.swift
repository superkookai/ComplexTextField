//
//  EmailTextField.swift
//  ComplexTextField
//
//  Created by Weerawut Chaiyasomboon on 27/2/2567 BE.
//

import SwiftUI

struct EmailTextField: View {
    @Binding var email: String
    var showPlaceHolder: Bool{
        email.isEmpty
    }
    var isValidEmail: Bool{
        email.isEmpty || email.isValidEmail()
    }
    
    var body: some View {
        VStack {
            TextField("", text: $email.animation())
                .font(.title2)
                .foregroundStyle(.gray)
                .autocorrectionDisabled()
                .textInputAutocapitalization(.never)
                .padding()
                .overlay {
                    Label("Enter Email Address", systemImage: "envelope.open.fill")
                        .font(.title2)
                        .foregroundStyle(.gray)
                        .allowsHitTesting(false)
                        .opacity(showPlaceHolder ? 1.0 : 0.0)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        .background(
                            Capsule()
                                .stroke(.gray, lineWidth: 0.5)
                        )
                }
            
            //valid email
            if !isValidEmail{
                Text("Invalid email address")
                    .foregroundStyle(.red)
                    .font(.subheadline)
                    .bold()
            }
        }
        .padding()
    }
}

#Preview {
    EmailTextField(email: .constant(""))
}
