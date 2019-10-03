//
//  MovieSearchBuilder.swift
//  MovieBox
//
//  Created by Cihan Karabaş on 3.10.2019.
//  Copyright © 2019 Cihan Karabaş. All rights reserved.
//

import  UIKit

final class MovieSearchBuilder{
    
    static func make() -> MovieSearchViewController {
        let storyboard = UIStoryboard(name: "MovieSearch", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "MovieSearchViewController") as! MovieSearchViewController
        viewController.service = app.service
        return viewController
    }
}

