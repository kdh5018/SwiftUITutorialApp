//
//  Page_1.swift
//  SwiftUITutorialApp
//
//  Created by 김도훈 on 11/21/23.
//

import SwiftUI

struct Page_1: View {
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: true, content: {
            VStack(spacing: 20) {
                
                Text("Hamlet")
                    .font(.title)
                    .background(Color.random)
                    .padding(.top, 20)
                
                horizontalItemView
                horizontalItemView
                horizontalItemView

                HStack {
                    HorizontalCard()
                    HorizontalCard()
                    HorizontalCard()
                }
                .padding(.horizontal, 15)
                .padding(.vertical, 20)
                .background(Color.gray)
            }
            .background(Color.random)
        })
        

    }
    
    var horizontalItemView: some View {
        HStack {
            GridItemView()
            GridItemView()
            GridItemView()
            GridItemView()
        }
        .frame(maxWidth: .infinity)
        .background(Color.random)
    }
}

#Preview {
    Page_1()
}
