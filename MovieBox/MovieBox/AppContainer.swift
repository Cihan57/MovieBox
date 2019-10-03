//
//  AppContainer.swift
//  MovieBox
//
//  Created by Cihan Karabaş on 3.10.2019.
//  Copyright © 2019 Cihan Karabaş. All rights reserved.
//

import Foundation
import MovieBoxAPI

let app = AppContainer()

final class AppContainer{
    
    let router = AppRouter()
    let service = MovieService()
    
}
