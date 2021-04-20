//
//  ShadowExample1.swift
//  WorkingWithShadows
//
//  Created by Siddharth on 20/04/21.
//

import SwiftUI

struct ShadowExample1:View{
    
    //Setter for text fields
    @State private var username = ""
    @State private var password = ""
    
    // Shadow Parameter for whole theme
    private var radius:CGFloat = 10
    private var xoffest:CGFloat = 10
    private var yoffset:CGFloat = 10
    // Gradient background view Implementations
    private let linearGradient  = LinearGradient(gradient: Gradient(colors: [Color.clear, Color.themeBackground]), startPoint: .topLeading, endPoint: .bottomTrailing)
    
    var body: some View{
        ZStack{
            linearGradient
                .edgesIgnoringSafeArea(.all)
            VStack(spacing:40) {
                Image(systemName:"person.circle")
                    .font(.system(size: 100
                                  , weight: .thin))
                    .foregroundColor(.themeForeground)
                    .shadow(radius: radius,x: xoffest,y: yoffset)
                Text("Log into your acount")
                    .font(.title2)
                    .fontWeight(.medium)
                    
                    .foregroundColor(.themeForeground)
                    .shadow(radius: radius,x: xoffest,y: yoffset)
                TextField("Username, Mobile, Email", text: $username)
                    .padding()
                    .background(Capsule().fill(Color.white).opacity(0.7))
                    .shadow(radius: radius,x: xoffest,y: yoffset)
                SecureField("Password", text: $password)
                    .padding()
                    .background(Capsule().fill(Color.white).opacity(0.7))
                    .shadow(radius: radius,x: xoffest,y: yoffset)
                
                Button(action:{}){
                    Text("Log In")
                        .font(.title2)
                        .fontWeight(.medium)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(
                            Capsule()
                                .fill(Color.clear)
                                .shadow(radius: radius,x: xoffest,y: yoffset)
                        )
                }
                Text("Create account here")
                    .font(.subheadline)
                    .fontWeight(.regular)
                    .foregroundColor(.themeForeground)
                    .shadow(radius: radius,x: xoffest,y: yoffset)
                Spacer()
                
            }
            
            .padding(.horizontal)
        }
    } 
}

struct ShadowExample1_Previews:PreviewProvider {
    static var previews: some View{
        ShadowExample1()
    }
}
