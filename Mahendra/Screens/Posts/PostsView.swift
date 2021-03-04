//
//  PostsView.swift
//  Mahendra
//
//  Created by Mahendra Vishwakarma on 01/03/21.
//  Copyright © 2021 Mahendra. All rights reserved.
//

import Foundation
import SwiftUI

struct PostsContentView: View {
@State var results = [PostsModel]()
var body: some View {
   
        
            List(results, id: \.id) { item in
                VStack(alignment: .leading) {
                    HStack(alignment: .center) {
                        Text(item.title).multilineTextAlignment(.leading)
                            .font(.title)
                        Spacer()
                        Image("favourites").multilineTextAlignment(.trailing)
                        
                    }
                   
                    Text(item.body)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                   
                }
                
            }.onAppear(perform: {
                self.loadData()
                })
    


}
    func loadData() {
            guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
                print("Invalid URL")
                return
            }
            let request = URLRequest(url: url)

            URLSession.shared.dataTask(with: request) { data, response, error in
                if let data = data {
                    if let response = try? JSONDecoder().decode([PostsModel].self, from: data) {
                        DispatchQueue.main.async {
                            self.results = response
                        }
                        return
                    }
                }
            }.resume()
        }
    
}
