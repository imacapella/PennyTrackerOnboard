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
                gradient: Gradient(colors: [Color.red.opacity(0.6), Color.red.opacity(0.8)]),
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
                
                Button{
                    print("move to another page")
                }label:{
                    Label("Move To Next Page", systemImage:"chevron.right")
                        .foregroundColor(.white)
                        .padding()
                        .cornerRadius(40)
                        .background(
                            DotPattern(dotColor: .black, backgroundColor: .red.opacity(0.9), dotSize: 3, spacing: 1, opacity: 0.2)
                                .clipShape(RoundedRectangle(cornerRadius: 12))
                        )
                        .frame(width: .infinity)
                }
                .padding()
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

// MARK: Next Page Button
/*
}*/
// MARK: Next Page Button
