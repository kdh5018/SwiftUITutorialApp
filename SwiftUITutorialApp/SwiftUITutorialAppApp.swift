//
//  SwiftUITutorialAppApp.swift
//  SwiftUITutorialApp
//
//  Created by 김도훈 on 11/21/23.
//

import SwiftUI

@main
struct SwiftUITutorialAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
            
            TabView {
                Page_1()
                    .tabItem {
                        Label("Received", systemImage: "tray.and.arrow.down.fill")
                    }
                Page_2()
                    .tabItem {
                        Label("Account", systemImage: "person.crop.circle.fill")
                    }
            }
            
        }
    }
}
