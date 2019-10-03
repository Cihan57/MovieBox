//
//  SplashBuilder.swift
//  MovieBox
//
//  Created by Cihan Karabaş on 3.10.2019.
//  Copyright © 2019 Cihan Karabaş. All rights reserved.
//

import UIKit

final class SplashBuilder{
    
    static func make() -> SplashViewController{
        let storyboard = UIStoryboard(name: "Splash", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "SplashViewController") as! SplashViewController
        //viewController.service = app.service
        return viewController
    }
}


