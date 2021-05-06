//
//  Mix_and_FixApp.swift
//  Mix and Fix
//
//  Created by Treydin Winward on 5/4/21.
//

import SwiftUI

@main
struct Mix_and_FixApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            TabView {
                RandomDrinkView()
                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
                    .tabItem {
                        Label("Random", systemImage: "arrow.triangle.branch")
                    }
                
                SearchByIngredientView()
                    .tabItem {
                        Label("Ingredient", systemImage: "magnifyingglass")
                    }
                
                SearchByDrinkNameView()
                    .tabItem {
                        Label("Drink", systemImage: "magnifyingglass")
                    }
                
                MyBarView()
                    .tabItem {
                        Label("My Bar", systemImage: "cylinder.split.1x2")
                    }
            }
            
            
        }
    }
}
