//
//  HCardView.swift
//  SwiftUITutorialApp
//
//  Created by 김도훈 on 11/21/23.
//

import SwiftUI

struct HCardView: View {
    var body: some View {
        VStack {
            topRowView
            bottomRowView
        }
        .padding()
        .frame(height: 300)
        .frame(maxWidth: .infinity)
        .background(Color.white
            .cornerRadius(20)
            .shadow(color: Color.gray.opacity(0.9), radius: 30, x: -5, y: 10))


    }
    
    var topRowView: some View {
        HStack {
            AsyncImage(url: URL(string: "https://randomuser.me/api/portraits/women/81.jpg"))
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .overlay(alignment: .bottomTrailing, content: {
                    Image(systemName: "star.fill")
                        .foregroundColor(.white)
                        .padding(4)
                        .background(Circle().fill(.blue))
                })
            
            VStack(alignment: .leading) {
                Text("Hamlet")
                    .font(.title)
                Text("Hamlet")
                    .font(.title)
                Text("Hamlet")
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .frame(maxWidth: .infinity)
        }
        .frame(maxWidth: .infinity)
        .background(Color.random)
    }
    
    var bottomRowView: some View {
        HStack(alignment: .center) {
            AsyncImage(url: URL(string: "https://randomuser.me/api/portraits/women/81.jpg"))
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
                .clipShape(Circle())
            Text("HamletHamlet")
                .font(.title)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("22시간 전")
                .font(.caption)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.random.cornerRadius(30))
    }
}

#Preview {
    HCardView()
}
