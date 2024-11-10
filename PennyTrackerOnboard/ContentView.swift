//
//  ContentView.swift
//  PennyTrackerOnboard
//
//  Created by Gürkan Karadaş on 7.11.2024.
//

import SwiftUI

struct ContentView: View {
    @State var animate : Bool = false
    var body: some View {
        
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.pennyRed.opacity(0.9), Color.pennyRed.opacity(0.7)]),
                startPoint: .top,
                endPoint: .bottom
            )
            .edgesIgnoringSafeArea(.all)
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3 , execute: {
                    animate.toggle()
                })
            }
            
            VStack {
                Spacer()
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .padding()
                    .shadow(radius: 10)
                    .scaleEffect(animate ? 1 : 0)
                    .animation(.snappy(duration: 1))
                
                Text("Where Every Penny Counts")
                    .font(.title3)
                    .foregroundColor(.white)
                    .padding(.top, 10)
                
                
                
                Spacer()
                
                Text("All Rights Reserved")
                    .font(.caption)
                    .foregroundColor(.white.opacity(0.7))
                    .padding(.bottom, 20)
            }
        }
    }
}

#Preview {
    ContentView()
}
