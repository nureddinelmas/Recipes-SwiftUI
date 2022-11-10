//
//  ContentView.swift
//  Recipes
//
//  Created by Nureddin Elmas on 2022-11-10.
//

import SwiftUI

struct ContentView: View {
    @StateObject var recipeApi = RecipesViewModel()
    var body: some View {
        Text("HEllo").onAppear{
            print(recipeApi.recipe)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
