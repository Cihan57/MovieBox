//
//  MovieDetailPresentation.swift
//  MovieBox
//
//  Created by Cihan Karabaş on 3.10.2019.
//  Copyright © 2019 Cihan Karabaş. All rights reserved.
//

import Foundation
import MovieBoxAPI

struct MovieDetailPresentation {
    let title: String
    let image: URL
    let detail: String?
    let year: String?
    let director: String?
    let rate: String?
}

extension MovieDetailPresentation {
    
    init(movie: Movie) {
        self.init(title: movie.title,image: movie.poster,detail: movie.plot, year: movie.year, director: movie.director, rate: movie.imdbRate)
    }
}
