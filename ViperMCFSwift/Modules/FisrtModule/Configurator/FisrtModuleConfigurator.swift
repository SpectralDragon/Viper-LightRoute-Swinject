//
//  FisrtModuleFisrtModuleConfigurator.swift
//  ViperMCFSwift
//
//  Created by SpectralDragon on 12/07/2016.
//  Copyright © 2016 WebAnt. All rights reserved.
//

import UIKit

class FisrtModuleModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? FisrtModuleViewController {
            configure(viewController)
        }
    }

    private func configure(viewController: FisrtModuleViewController) {

        let router = FisrtModuleRouter()
        router.transitionHandler = viewController

        let presenter = FisrtModulePresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = FisrtModuleInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
