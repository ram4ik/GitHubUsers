//
//  ContentView.swift
//  GitHubUsers
//
//  Created by Ramill Ibragimov on 05.05.2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var fetch = FetchUsers()
    
    var body: some View {
        List(fetch.items, id: \.login) { user in
            Link(destination: URL(string: user.html_url)!, label: {
                VStack(alignment: .leading) {
                    Text(user.login)
                    Text("\(user.url)")
                        .font(.system(size: 11))
                        .foregroundColor(Color.gray)
                }
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
