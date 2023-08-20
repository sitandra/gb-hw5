//
//  NewsView.swift
//  gb-hw5
//
//  Created by Юлия Дебелова on 20.08.2023.
//

import SwiftUI

struct NewsView: View {
    @State var news: [NewsModel.News] = []
    private var networkService = NetworkService()
    
    var body: some View {
        List(news) { news in
            
            VStack {
                Text(Helper.date(timestamp: news.date))
                    .font(.body)
                    .fontWeight(.light)
                Text(news.title)
                    .font(.title3)
                    .fontWeight(.bold)
                    
            }
        }
        .padding(.horizontal, -10.0)
        .onAppear {
            networkService.getNews {
                (news) in self.news = news
            }
        }
        .navigationTitle("News")
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
