//
//  ContentView.swift
//  ComplexTextField
//
//  Created by Weerawut Chaiyasomboon on 27/2/2567 BE.
//

import SwiftUI

struct ContentView: View {
    @State private var email: String = ""
    var title: String{
        email.isEmpty ? "Enter Email" : "Current Email"
    }
    var titleColor: Color{
        email.isEmpty ? .red : .blue
    }
    
    var body: some View {
        VStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(titleColor)
                .padding()
            
            Text(email)
                .bold()
            
            Spacer()
            
            EmailTextField(email: $email)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
