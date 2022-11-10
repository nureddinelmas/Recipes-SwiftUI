// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
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

import Foundation

// MARK: - Recipes
struct Recipes: Codable {
    let from, to, count: Int
    let links: RecipesLinks
    let hits: [Hit]

    enum CodingKeys: String, CodingKey {
        case from, to, count
        case links
        case hits
    }
}

// MARK: Recipes convenience initializers and mutators

extension Recipes {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Recipes.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        from: Int? = nil,
        to: Int? = nil,
        count: Int? = nil,
        links: RecipesLinks? = nil,
        hits: [Hit]? = nil
    ) -> Recipes {
        return Recipes(
            from: from ?? self.from,
            to: to ?? self.to,
            count: count ?? self.count,
            links: links ?? self.links,
            hits: hits ?? self.hits
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.hitTask(with: url) { hit, response, error in
//     if let hit = hit {
//       ...
//     }
//   }
//   task.resume()

// MARK: - Hit
struct Hit: Codable {
    let recipe: Recipe
    let links: HitLinks

    enum CodingKeys: String, CodingKey {
        case recipe
        case links
    }
}

// MARK: Hit convenience initializers and mutators

extension Hit {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Hit.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        recipe: Recipe? = nil,
        links: HitLinks? = nil
    ) -> Hit {
        return Hit(
            recipe: recipe ?? self.recipe,
            links: links ?? self.links
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.hitLinksTask(with: url) { hitLinks, response, error in
//     if let hitLinks = hitLinks {
//       ...
//     }
//   }
//   task.resume()

// MARK: - HitLinks
struct HitLinks: Codable {
    let linksSelf: Next

    enum CodingKeys: String, CodingKey {
        case linksSelf
    }
}

// MARK: HitLinks convenience initializers and mutators

extension HitLinks {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(HitLinks.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        linksSelf: Next? = nil
    ) -> HitLinks {
        return HitLinks(
            linksSelf: linksSelf ?? self.linksSelf
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.nextTask(with: url) { next, response, error in
//     if let next = next {
//       ...
//     }
//   }
//   task.resume()

// MARK: - Next
struct Next: Codable {
    let href: String
    let title: Title
}

// MARK: Next convenience initializers and mutators

extension Next {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Next.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        href: String? = nil,
        title: Title? = nil
    ) -> Next {
        return Next(
            href: href ?? self.href,
            title: title ?? self.title
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum Title: String, Codable {
    case nextPage = "Next page"
    case titleSelf = "Self"
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.recipeTask(with: url) { recipe, response, error in
//     if let recipe = recipe {
//       ...
//     }
//   }
//   task.resume()

// MARK: - Recipe
struct Recipe: Codable {
    let uri: String
    let label: String
    let image: String
    let images: Images
    let source: String
    let url: String
    let shareAs: String
    let yield: Int
    let dietLabels: [DietLabel]
    let healthLabels, cautions, ingredientLines: [String]
    let ingredients: [Ingredient]
    let calories, totalWeight: Double
    let totalTime: Int
    let cuisineType: [CuisineType]
    let mealType: [MealType]
    let dishType: [String]
    let totalNutrients, totalDaily: [String: Total]
    let digest: [Digest]
}

// MARK: Recipe convenience initializers and mutators

extension Recipe {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Recipe.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        uri: String? = nil,
        label: String? = nil,
        image: String? = nil,
        images: Images? = nil,
        source: String? = nil,
        url: String? = nil,
        shareAs: String? = nil,
        yield: Int? = nil,
        dietLabels: [DietLabel]? = nil,
        healthLabels: [String]? = nil,
        cautions: [String]? = nil,
        ingredientLines: [String]? = nil,
        ingredients: [Ingredient]? = nil,
        calories: Double? = nil,
        totalWeight: Double? = nil,
        totalTime: Int? = nil,
        cuisineType: [CuisineType]? = nil,
        mealType: [MealType]? = nil,
        dishType: [String]? = nil,
        totalNutrients: [String: Total]? = nil,
        totalDaily: [String: Total]? = nil,
        digest: [Digest]? = nil
    ) -> Recipe {
        return Recipe(
            uri: uri ?? self.uri,
            label: label ?? self.label,
            image: image ?? self.image,
            images: images ?? self.images,
            source: source ?? self.source,
            url: url ?? self.url,
            shareAs: shareAs ?? self.shareAs,
            yield: yield ?? self.yield,
            dietLabels: dietLabels ?? self.dietLabels,
            healthLabels: healthLabels ?? self.healthLabels,
            cautions: cautions ?? self.cautions,
            ingredientLines: ingredientLines ?? self.ingredientLines,
            ingredients: ingredients ?? self.ingredients,
            calories: calories ?? self.calories,
            totalWeight: totalWeight ?? self.totalWeight,
            totalTime: totalTime ?? self.totalTime,
            cuisineType: cuisineType ?? self.cuisineType,
            mealType: mealType ?? self.mealType,
            dishType: dishType ?? self.dishType,
            totalNutrients: totalNutrients ?? self.totalNutrients,
            totalDaily: totalDaily ?? self.totalDaily,
            digest: digest ?? self.digest
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum CuisineType: String, Codable {
    case american = "american"
    case italian = "italian"
    case middleEastern = "middle eastern"
}

enum DietLabel: String, Codable {
    case balanced = "Balanced"
    case highFiber = "High-Fiber"
    case lowCarb = "Low-Carb"
    case lowFat = "Low-Fat"
    case lowSodium = "Low-Sodium"
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.digestTask(with: url) { digest, response, error in
//     if let digest = digest {
//       ...
//     }
//   }
//   task.resume()

// MARK: - Digest
struct Digest: Codable {
    let label, tag: String
    let schemaOrgTag: SchemaOrgTag?
    let total: Double
    let hasRDI: Bool
    let daily: Double
    let unit: Unit
    let sub: [Digest]?
}

// MARK: Digest convenience initializers and mutators

extension Digest {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Digest.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        label: String? = nil,
        tag: String? = nil,
        schemaOrgTag: SchemaOrgTag?? = nil,
        total: Double? = nil,
        hasRDI: Bool? = nil,
        daily: Double? = nil,
        unit: Unit? = nil,
        sub: [Digest]?? = nil
    ) -> Digest {
        return Digest(
            label: label ?? self.label,
            tag: tag ?? self.tag,
            schemaOrgTag: schemaOrgTag ?? self.schemaOrgTag,
            total: total ?? self.total,
            hasRDI: hasRDI ?? self.hasRDI,
            daily: daily ?? self.daily,
            unit: unit ?? self.unit,
            sub: sub ?? self.sub
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum SchemaOrgTag: String, Codable {
    case carbohydrateContent = "carbohydrateContent"
    case cholesterolContent = "cholesterolContent"
    case fatContent = "fatContent"
    case fiberContent = "fiberContent"
    case proteinContent = "proteinContent"
    case saturatedFatContent = "saturatedFatContent"
    case sodiumContent = "sodiumContent"
    case sugarContent = "sugarContent"
    case transFatContent = "transFatContent"
}

enum Unit: String, Codable {
    case empty = "%"
    case g = "g"
    case kcal = "kcal"
    case mg = "mg"
    case µg = "µg"
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.imagesTask(with: url) { images, response, error in
//     if let images = images {
//       ...
//     }
//   }
//   task.resume()

// MARK: - Images
struct Images: Codable {
    let thumbnail, small, regular: Large
    let large: Large?

    enum CodingKeys: String, CodingKey {
        case thumbnail
        case small
        case regular
        case large
    }
}

// MARK: Images convenience initializers and mutators

extension Images {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Images.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        thumbnail: Large? = nil,
        small: Large? = nil,
        regular: Large? = nil,
        large: Large?? = nil
    ) -> Images {
        return Images(
            thumbnail: thumbnail ?? self.thumbnail,
            small: small ?? self.small,
            regular: regular ?? self.regular,
            large: large ?? self.large
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.largeTask(with: url) { large, response, error in
//     if let large = large {
//       ...
//     }
//   }
//   task.resume()

// MARK: - Large
struct Large: Codable {
    let url: String
    let width, height: Int
}

// MARK: Large convenience initializers and mutators

extension Large {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Large.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        url: String? = nil,
        width: Int? = nil,
        height: Int? = nil
    ) -> Large {
        return Large(
            url: url ?? self.url,
            width: width ?? self.width,
            height: height ?? self.height
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.ingredientTask(with: url) { ingredient, response, error in
//     if let ingredient = ingredient {
//       ...
//     }
//   }
//   task.resume()

// MARK: - Ingredient
struct Ingredient: Codable {
    let text: String
    let quantity: Double
    let measure: String?
    let food: String
    let weight: Double
    let foodCategory: String?
    let foodID: String
    let image: String?

    enum CodingKeys: String, CodingKey {
        case text, quantity, measure, food, weight, foodCategory
        case foodID
        case image
    }
}

// MARK: Ingredient convenience initializers and mutators

extension Ingredient {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Ingredient.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        text: String? = nil,
        quantity: Double? = nil,
        measure: String?? = nil,
        food: String? = nil,
        weight: Double? = nil,
        foodCategory: String?? = nil,
        foodID: String? = nil,
        image: String?? = nil
    ) -> Ingredient {
        return Ingredient(
            text: text ?? self.text,
            quantity: quantity ?? self.quantity,
            measure: measure ?? self.measure,
            food: food ?? self.food,
            weight: weight ?? self.weight,
            foodCategory: foodCategory ?? self.foodCategory,
            foodID: foodID ?? self.foodID,
            image: image ?? self.image
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum MealType: String, Codable {
    case lunchDinner = "lunch/dinner"
    case snack = "snack"
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.totalTask(with: url) { total, response, error in
//     if let total = total {
//       ...
//     }
//   }
//   task.resume()

// MARK: - Total
struct Total: Codable {
    let label: String
    let quantity: Double
    let unit: Unit
}

// MARK: Total convenience initializers and mutators

extension Total {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Total.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        label: String? = nil,
        quantity: Double? = nil,
        unit: Unit? = nil
    ) -> Total {
        return Total(
            label: label ?? self.label,
            quantity: quantity ?? self.quantity,
            unit: unit ?? self.unit
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.recipesLinksTask(with: url) { recipesLinks, response, error in
//     if let recipesLinks = recipesLinks {
//       ...
//     }
//   }
//   task.resume()

// MARK: - RecipesLinks
struct RecipesLinks: Codable {
    let next: Next
}

// MARK: RecipesLinks convenience initializers and mutators

extension RecipesLinks {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(RecipesLinks.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        next: Next? = nil
    ) -> RecipesLinks {
        return RecipesLinks(
            next: next ?? self.next
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Helper functions for creating encoders and decoders

func newJSONDecoder() -> JSONDecoder {
    let decoder = JSONDecoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        decoder.dateDecodingStrategy = .iso8601
    }
    return decoder
}

func newJSONEncoder() -> JSONEncoder {
    let encoder = JSONEncoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        encoder.dateEncodingStrategy = .iso8601
    }
    return encoder
}

// MARK: - URLSession response handlers

extension URLSession {
    fileprivate func codableTask<T: Codable>(with url: URL, completionHandler: @escaping (T?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        return self.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completionHandler(nil, response, error)
                return
            }
            completionHandler(try? newJSONDecoder().decode(T.self, from: data), response, nil)
        }
    }

    func recipesTask(with url: URL, completionHandler: @escaping (Recipes?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        return self.codableTask(with: url, completionHandler: completionHandler)
    }
}

