//
//  NewsModel.swift
//  gb-hw5
//
//  Created by Юлия Дебелова on 20.08.2023.
//

struct NewsModel: Decodable {
    var results: [News]
    
    struct News: Decodable, Identifiable {
        var id: Int
        var date: Double
        var title: String
        
        enum CodingKeys: String, CodingKey {
            case id
            case date = "publication_date"
            case title
        }
    }
}


