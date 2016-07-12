//
//  SecondModuleSecondModulePresenter.swift
//  ViperMCFSwift
//
//  Created by SpectralDragon on 12/07/2016.
//  Copyright © 2016 WebAnt. All rights reserved.
//

import Foundation

class SecondModulePresenter: NSObject, SecondModuleModuleInput, SecondModuleViewOutput, SecondModuleInteractorOutput {

    weak var view: SecondModuleViewInput!
    var interactor: SecondModuleInteractorInput!
    var router: SecondModuleRouterInput!
    
    var exampleString: String?

    func viewIsReady() {
        view.setExampleString(exampleString!)
    }
    
    func configureWithExampleString(data: String) {
        exampleString = data
    }
}
