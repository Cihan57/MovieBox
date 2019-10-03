//
//  MoviePresentation.swift
//  MovieBox
//
//  Created by Cihan Karabaş on 3.10.2019.
//  Copyright © 2019 Cihan Karabaş. All rights reserved.
//

import Foundation
import MovieBoxAPI

struct MoviePresentation {
    let title: String
    let image: URL
    let year: String
}

extension MoviePresentation {
    
    init(movie: Movie) {
        self.init(title: movie.title, image: movie.poster, year: movie.year)
    }
}
