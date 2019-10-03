//
//  Movie.swift
//  MovieBoxAPI
//
//  Created by Cihan Karabaş on 2.10.2019.
//  Copyright © 2019 Cihan Karabaş. All rights reserved.
//

import Foundation

// MARK: - Movie
public struct Movie: Decodable {
    public let title, year : String
    public let runtime, genre, director, imdbRate: String?
    public let plot, language: String?
    public let poster: URL
    public let imdbId: String
    public let type: String
    
    enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case type = "Type"
        case runtime = "Runtime"
        case genre = "Genre"
        case director = "Director"
        case plot = "Plot"
        case language = "Language"
        case poster = "Poster"
        case imdbId = "imdbID"
        case imdbRate = "imdbRate"
    }
}
