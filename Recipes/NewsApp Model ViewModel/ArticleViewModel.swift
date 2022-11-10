//
//  ArticleViewModel.swift
//  Recipes
//
//  Created by Nureddin Elmas on 2022-11-07.
//

import Foundation

class ArticleViewModel: ObservableObject {
    
   @Published var articles = [Article]()
    
   
  func getArticles() {
      WebService().getArticles { article in
          self.articles = article!
      }
    }
}

class WebService {
    func getArticles(completion : @escaping ([Article]?) -> () ){
        guard let url = URL(string: BASE_URL_ARTICLES) else {return}
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                let articleList = try? JSONDecoder().decode(ArticleList.self, from: data)
                if let articleList = articleList {
                    // self.articles = articleList.articles
                    completion(articleList.articles)
                }
            }
        }
    }
}
