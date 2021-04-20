//
//  ShadowOverview.swift
//  WorkingWithShadows
//
//  Created by Siddharth on 20/04/21.
//

import SwiftUI

struct ShadowOverView: View {
    var body: some View {
        VStack(spacing:20.0){
            Text("SHADOW COLOR")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text("BASIC")
                Circle()
                    .fill(Color.blue)
                    .frame(height:60.0)
                    .shadow(color: Color(#colorLiteral(red: 0.03317430243, green: 0.5166893005, blue: 0.9986330867, alpha: 0.5)), radius: 1, x: 15, y:15)
            Spacer()
            Text("Level Of Depth")
            HStack{
                Circle()
                    .fill(Color.blue)
                    .frame(height:60.0)
                    .shadow(color: Color(#colorLiteral(red: 0.03317430243, green: 0.5166893005, blue: 0.9986330867, alpha: 0.5)), radius: 8, x: 0, y:5)
                Circle()
                    .fill(Color.blue)
                    .frame(height:60.0)
                    .shadow(color: Color(#colorLiteral(red: 0.03317430243, green: 0.5166893005, blue: 0.9986330867, alpha: 0.5)), radius: 8, x: 0, y:10)
                Circle()
                    .fill(Color.blue)
                    .frame(height:60.0)
                    .shadow(color: Color(#colorLiteral(red: 0.03317430243, green: 0.5166893005, blue: 0.9986330867, alpha: 0.5)), radius: 8, x: 0, y:15)
            }
            Spacer()
            Text("Color Shadow")
            HStack{
                Circle()
                    .fill(Color.pink)
                    .frame(height:60.0)
                    .shadow(color: Color(#colorLiteral(red: 0.9989975095, green: 0.2166915536, blue: 0.3724594712, alpha: 0.5213849402)), radius: 8, x: 0, y:8)
                Circle()
                    .fill(Color.blue)
                    .frame(height:60.0)
                    .shadow(color: Color(#colorLiteral(red: 0.03317430243, green: 0.5166893005, blue: 0.9986330867, alpha: 0.5)), radius: 8, x: 0, y:8)
                Circle()
                    .fill(Color.green)
                    .frame(height:60.0)
                    .shadow(color: Color(#colorLiteral(red: 0.1892508864, green: 0.8186378479, blue: 0.3452199399, alpha: 0.5)), radius: 8, x: 0, y:8)
            }
            Spacer()
            
        }
        
    }
}

struct ShadowOverView_Previews: PreviewProvider {
    static var previews: some View {
        ShadowOverView().preferredColorScheme(.dark)
    }
}

