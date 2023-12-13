//
//  HorizontalCard.swift
//  SwiftUITutorialApp
//
//  Created by 김도훈 on 11/21/23.
//

import SwiftUI

struct HorizontalCard: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("김도훈")
                .font(.title)
                .padding(.bottom, 6)
            Text("김도훈")
                .font(.system(size: 12))
                .padding(6)
            Spacer()
                .frame(height: 20)
                .frame(maxWidth: .infinity)
            Image(systemName: "gamecontroller")
                .resizable()
                .frame(width: 50, height: 50)
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity, alignment: .trailing)
        }
        .padding(8)
        .frame(maxWidth: .infinity)
        .background(Color.yellow.cornerRadius(20))
    }
}

#Preview {
    HorizontalCard()
}
