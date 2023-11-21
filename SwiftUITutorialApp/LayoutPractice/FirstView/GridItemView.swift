//
//  GridItemView.swift
//  SwiftUITutorialApp
//
//  Created by 김도훈 on 11/21/23.
//

import SwiftUI

struct GridItemView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .resizable()
                .frame(width: 60, height: 60)
                .aspectRatio(contentMode: .fit)
                .background(Color.random)
            Text("Water wheel")
                .font(.system(size: 18))
                .background(Color.random)
        }
        .frame(maxWidth: .infinity)
        .background(Color.random)
    }
    
}

#Preview {
    GridItemView()
}
