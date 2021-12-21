//
//  ContentView.swift
//  Edvora
//
//  Created by sruthi on 20/12/21.
//

import SwiftUI

struct ContentView: View {
           
            @State private var name: String = ""
            @State private var password: String = ""
            @State private var email: String = ""
            let verticalPaddingForForm = 40.0
            var body: some View {
                ZStack {
                    
                    VStack(spacing: CGFloat(verticalPaddingForForm)) {
                        Image(/*@START_MENU_TOKEN@*/"name_icn"/*@END_MENU_TOKEN@*/)
                        HStack {
                            Image(systemName: "person")
                                .foregroundColor(.secondary)
                            TextField("Enter your name", text: $name)
                                .foregroundColor(Color.black)
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        
                        HStack {
                            Image("password_icn")
                                .resizable()
                                .frame(width: 16.0, height: 16.0) .foregroundColor(.secondary)
                            SecureField("Enter password", text: $password)
                                .foregroundColor(Color.black)
                            
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        
                        HStack {
                            Image("email_icn")
                                .foregroundColor(.secondary)
                            TextField("Email address", text: $email)
                                .foregroundColor(Color.black)
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Text("Login")
                                .padding().frame(width: 280, height: 50, alignment: .center)
                            
                        }
                        .background(Color.brown)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                        
                    }.padding(.horizontal, CGFloat(verticalPaddingForForm))
                    
                }
            };
        }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
