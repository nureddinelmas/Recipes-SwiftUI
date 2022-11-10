
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

struct Resource<T : Codable> {
    let url: URL
}

enum NetworkError : Error {
    case decodingError
    case domainError
    case urlError
}

class Webservice {
    func load<T>(resource : Resource<T>, completion: @escaping (Result<T, NetworkError>) -> Void) {
        URLSession.shared.dataTask(with: resource.url) { data, response, error in
            guard let data = data, error == nil else {
                completion(.failure(.domainError))
                return
            }
            let result = try? JSONDecoder().decode(T.self, from: data)
            if let result = result {
                DispatchQueue.main.async {
                    completion(.success(result))
                }
            } else {
                completion(.failure(.decodingError))
            }
            
        }.resume()
    }
}




class RecipesViewModel: ObservableObject{
   
    @Published var recipe = [Recipe]()
    @Published var hits = [Hit]()
    
    init(){
       getRecipesWithWebService()
    }

    func getRecipesWithWebService (){
        guard let url = URL(string: BASE_URL) else {
            fatalError("The URL is not correct")
            return
        }
        
        let resource = Resource<[Recipes]>(url: url)
        
        Webservice().load(resource: resource) { result in
            switch result {
            case .success(let recipes):
                print(recipes)
            case  .failure(let error):
                print(error)
            }
        }
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
