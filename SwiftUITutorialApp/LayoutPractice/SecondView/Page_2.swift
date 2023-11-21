//
//  Page_2.swift
//  SwiftUITutorialApp
//
//  Created by 김도훈 on 11/21/23.
//

import SwiftUI

struct Page_2: View {
    var body: some View {
        VStack(
            alignment: .leading,
            spacing: 10
        ) {
            topNavView
            headerView
            HCardView()
            Spacer()
            bottomButton
        }
        .padding()
    }
    
    var bottomButton: some View {
        Button(action: {}) {
            Text("입장하기")
        }
        .frame(height: 60)
        .frame(maxWidth: .infinity)
        .background(Color.random.cornerRadius(8))
    }
    
    var topNavView: some View {
        HStack {
            Button(action: {}) {
                Image(systemName: "eraser.fill")
            }
            Spacer().frame(height: 0)
            Button(action: {}) {
                Image(systemName: "eraser.fill")
            }
        }
        .background(Color.random)
    }
    
    var headerView: some View {
        VStack(spacing: 0) {
            Text("Hamlet")
                .font(.title)
                .frame(maxWidth: .infinity, alignment: .leading)
            AsyncImage(url: URL(string: "https://randomuser.me/api/portraits/women/81.jpg"))
                .frame(width: 120, height: 120)
                .clipShape(Circle())
                .padding(.bottom, 10)
            
            
            Text("HamletHamletHamletHamletHamletHamletHamletHamlet")
                .font(.title)
        }
        .background(Color.random)
    }
}

#Preview {
    Page_2()
}
