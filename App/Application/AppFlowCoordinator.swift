//
//  AppFlowCoordinator.swift
//  ExampleMVVM
//
//  Created by Oleh Kudinov on 03.03.19.
//

import UIKit

class AppFlowCoordinator {

    var navigationController: UINavigationController
    private let appDIContainer: AppDIContainer
    
    init(navigationController: UINavigationController,
         appDIContainer: AppDIContainer) {
        self.navigationController = navigationController
        self.appDIContainer = appDIContainer
    }
    
    func start() {
        // In App Flow we can check if user needs to login, if yes we would run login flow
        let moviesSearchModule = appDIContainer.makeMoviesSearchModule()
        moviesSearchModule.startMoviesSearchFlow(in: navigationController)
    }
}
