//
//  User.swift
//  GitHubUsers
//
//  Created by Ramill Ibragimov on 05.05.2021.
//

import Foundation

struct User: Codable {
    public var login: String
    public var url: String
    public var avatar_url: String
    public var html_url: String
}
