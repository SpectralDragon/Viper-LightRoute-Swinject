//
//  ThirdModuleThirdModuleConfigurator.swift
//  ViperMCFSwift
//
//  Created by gnatok on 13/07/2016.
//  Copyright © 2016 WebAnt. All rights reserved.
//

import UIKit

class ThirdModuleModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? ThirdModuleViewController {
            configure(viewController)
        }
    }

    private func configure(viewController: ThirdModuleViewController) {

        let router = ThirdModuleRouter()

        let presenter = ThirdModulePresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = ThirdModuleInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
