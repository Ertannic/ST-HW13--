import Foundation

struct CompositionalModel: Hashable {
    var mainTitle: String?
    var description: String?
    var image: String
    var numberOfItem: Int?
}

extension CompositionalModel {
    static let modelsArray = [
        
        [CompositionalModel(mainTitle: "Мои альбомы",image: "photo"),
         
        ]
    ]
}
