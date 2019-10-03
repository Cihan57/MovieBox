//
//  ApiConstant.swift
//  MovieBoxAPI
//
//  Created by Cihan Karabaş on 2.10.2019.
//  Copyright © 2019 Cihan Karabaş. All rights reserved.
//

import Foundation

public class ApiConstant {
    
    static let baseURL = "omdbapi.com"
    static let posterURL = "https://m.media-amazon.com/images/M/"
    static let apiKey = "a57ad0ef"
    
}

enum HTTPHeaderField: String {
    case authentication = "Authorization"
    case contentType = "Content-Type"
    case acceptType = "Accept"
    case acceptEncoding = "Accept-Encoding"
}

enum ContentType: String {
    case json = "application/json"
}
