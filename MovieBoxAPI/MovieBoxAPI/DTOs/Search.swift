//
//  Search.swift
//  MovieBoxAPI
//
//  Created by Cihan Karabaş on 2.10.2019.
//  Copyright © 2019 Cihan Karabaş. All rights reserved.
//

import Foundation

//MARK: - Search
public struct Search : Decodable {
    public let search : [Movie]
    public let totalResults, response : String
    
    enum CodingKeys : String, CodingKey {
        case search = "Search"
        case totalResults
        case response = "Response"
    }
    
}
