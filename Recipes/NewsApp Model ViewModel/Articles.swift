//
//  Articles.swift
//  Recipes
//
//  Created by Nureddin Elmas on 2022-11-07.
//


import Foundation
import SwiftUI

struct ArticleList : Codable, Hashable {

    var articles : [Article]
}

struct Article : Codable, Hashable{

    var title : String
    var description : String
    var urlToImage:String
    var content : String
}
