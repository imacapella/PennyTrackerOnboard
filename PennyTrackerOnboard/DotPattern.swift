//
//  DotPattern.swift
//  PennyTrackerOnboard
//
//  Created by Gürkan Karadaş on 8.11.2024.
//


import SwiftUI

struct DotPattern: View {
    var dotColor: Color = .black
    var backgroundColor: Color = .clear
    var dotSize: CGFloat = 4
    var spacing: CGFloat = 12
    var opacity: Double = 0.0

    var body: some View {
        GeometryReader { geometry in
            let columns = Int(geometry.size.width / (dotSize + spacing)) + 2
            let rows = Int(geometry.size.height / (dotSize + spacing)) + 2
            
            ZStack {
                backgroundColor
                ForEach(0..<rows, id: \.self) { row in
                    ForEach(0..<columns, id: \.self) { column in
                        Circle()
                            .fill(dotColor)
                            .frame(width: dotSize, height: dotSize)
                            .opacity(opacity)
                            .position(
                                x: CGFloat(column) * (dotSize + spacing),
                                y: CGFloat(row) * (dotSize + spacing)
                            )
                    }
                }
            }
            
            .clipped()
        }.edgesIgnoringSafeArea(.all)
    }
}


#Preview {
    DotPattern(dotColor: .gray, backgroundColor: .white, dotSize: 3, spacing: 5, opacity: 0.5)
}
