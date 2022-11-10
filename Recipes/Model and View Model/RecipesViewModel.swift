
import SwiftUI
//
//  RecipesViewModel.swift
//  Recipes
//
//  Created by Nureddin Elmas on 2022-11-06.
//

//   let recipes = try Recipes(json)

//
// To read values from URLs:
//
//   let task = URLSession.shared.recipesTask(with: url) { recipes, response, error in
//     if let recipes = recipes {
//       ...
//     }
//   }
//   task.resume()

// let recipes = try? newJSONDecoder().decode(Recipes.self, from: jsonData)

import Foundation
import SwiftUI


 let BASE_URL = "https://api.edamam.com/api/recipes/v2?type=public&q=turkish&app_id=062e2906&app_key=ab4f8a9c1b6ba8b2b72c475829e7f354"

/*
class WebSer{
    func getRec(completion : @escaping (Recipe?) -> ()){
        guard let url = URL(string: BASE_URL) else { return }
        
        URLSession.shared.recipesTask(with: url) { recipes, response, error in
            if let recipes = recipes {
                DispatchQueue.main.async {
                    
                    recipes.hits.forEach { element in
                     //   self.recipe.append(element.recipe)
                        completion(element.recipe)
                    }
                   // for item in recipes.hits {
                    //    self.recipe.append(item.recipe)
                   // }

                }
               
            }
            
        }.resume()
    }
}
*/
class RecipesViewModel: ObservableObject{
   
    @Published var recipe = [Recipe]()
    @Published var hits = [Hit]()
    
    init(){
        getRecipe()
    }

    
    func getRecipe(){
        
        guard let url = URL(string: BASE_URL) else { return }
       
        URLSession.shared.recipesTask(with: url) { recipes, response, error in
                   
                if let recipes = recipes {
                    DispatchQueue.main.async {
                       print(recipes)
                        for item in recipes.hits {
                        print(item)
                           // self.hits = [item]
                           
                        }
                        /*
                        for item1 in self.hits{
                            self.recipe.append(item1.recipe)
                            print(self.recipe)
                        }
                        */
                        
                        
                    }
                }
           
           
        }.resume()
      
       
    }
    
    
    
}
