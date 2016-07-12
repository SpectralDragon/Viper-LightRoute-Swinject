//
//  SecondModuleSecondModuleConfigurator.swift
//  ViperMCFSwift
//
//  Created by SpectralDragon on 12/07/2016.
//  Copyright © 2016 WebAnt. All rights reserved.
//

import UIKit

class SecondModuleModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? SecondModuleViewController {
            configure(viewController)
        }
    }

    private func configure(viewController: SecondModuleViewController) {

        let router = SecondModuleRouter()

        let presenter = SecondModulePresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = SecondModuleInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
