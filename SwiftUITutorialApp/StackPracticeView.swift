//
//  StackPracticeView.swift
//  SwiftUITutorialApp
//
//  Created by 김도훈 on 11/21/23.
//

import SwiftUI

struct StackPracticeView: View {
//    var body: some View {
//        VStack(alignment: HorizontalAlignment.leading, spacing: 10) {
//
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                .frame(maxWidth: .infinity).background(Color.random)
//            Text("Hello, World!").background(Color.random)
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).background(Color.random)
//            Text("Hello, World!").background(Color.random)
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).background(Color.random)
//
//        }
//        .frame(width: 300, height: 600)
//        .background(Color.yellow)
        
//        HStack(alignment: .top, spacing: 10) {
//            
//            Text("Hello, World!")
//                .frame(maxWidth: .infinity, maxHeight: .infinity).background(Color.random)
//            Text("Hello, World!").background(Color.random)
//            Text("Hello, World!").background(Color.random)
//            Text("Hello, World!").background(Color.random)
//            Text("Hello, World!").background(Color.random)
//            
//        }
//        .frame(width: 300, height: 600)
//        .background(Color.yellow)
        
//    }
//    
//    let colors: [Color] =
//        [.red, .orange, .yellow, .green, .blue, .purple]
//
//
//    var body: some View {
//        ZStack {
//            ForEach(0..<colors.count) {
//                Rectangle()
//                    .fill(colors[$0])
//                    .frame(width: 100, height: 100)
//                    .offset(x: CGFloat($0) * 10.0,
//                            y: CGFloat($0) * 10.0)
//            }
//        }
//    }
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 50)
            Rectangle()
                .fill(Color.blue)
                .frame(width:50, height: 100)
        }
        .border(Color.green, width: 1)
    }
    
}

#Preview {
    StackPracticeView()
}
