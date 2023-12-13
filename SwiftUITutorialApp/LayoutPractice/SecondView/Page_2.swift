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
        .foregroundColor(.black)
        .frame(height: 60)
        .frame(maxWidth: .infinity)
        .background(Color.green.cornerRadius(8))
    }
    
    var topNavView: some View {
        HStack {
            Button(action: {}) {
                Image(systemName: "eraser.fill")
            }
            .foregroundColor(.black)
            Spacer().frame(height: 0)
            Button(action: {}) {
                Image(systemName: "plus")
            }
            .foregroundColor(.black)
        }
    }
    
    var headerView: some View {
        VStack(spacing: 0) {
            Text("김도훈")
                .font(.title)
                .frame(maxWidth: .infinity, alignment: .leading)
            AsyncImage(url: URL(string: "https://randomuser.me/api/portraits/men/81.jpg"))
                .frame(width: 120, height: 120)
                .clipShape(Circle())
                .padding(.bottom, 10)
            
            
            Text("김도훈입니다")
                .font(.title)
        }
//        .background(Color.random)
    }
}

#Preview {
    Page_2()
}
