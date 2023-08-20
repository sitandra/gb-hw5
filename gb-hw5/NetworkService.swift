//
//  NetworkService.swift
//  gb-hw5
//
//  Created by Юлия Дебелова on 20.08.2023.
//

import Foundation

final class NetworkService{
    func getNews(completion: @escaping ([NewsModel.News]) -> ()) {
        guard let url = URL(string: "https://kudago.com/public-api/v1.4/news/?fields=id,title,publication_date&text_format=text&actual_only=true&location=ekb") else {return}
        URLSession.shared.dataTask(with: url) {(data, _, _) in
            guard let data else {return}
            do {
                let news = try JSONDecoder().decode(NewsModel.self, from: data)
                completion(news.results)
            } catch {
                print(error)
            }
        }.resume()
    }
}
