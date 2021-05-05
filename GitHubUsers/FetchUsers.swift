//
//  FetchUsers.swift
//  GitHubUsers
//
//  Created by Ramill Ibragimov on 05.05.2021.
//

import Foundation

class FetchUsers: ObservableObject {
    @Published var items = [User]()
    
    init() {
        let url = URL(string: "https://api.github.com/search/users?q=ram4ik")!
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            do {
                if let data = data {
                    let decodedData = try JSONDecoder().decode(Result.self, from: data)
                    DispatchQueue.main.async {
                        self.items = decodedData.items
                    }
                } else {
                    print("No data")
                }
            } catch {
                print("Error: \(error.localizedDescription)")
            }
        }.resume()
    }
}
