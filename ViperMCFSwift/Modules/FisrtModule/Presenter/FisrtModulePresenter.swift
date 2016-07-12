//
//  FisrtModuleFisrtModulePresenter.swift
//  ViperMCFSwift
//
//  Created by SpectralDragon on 12/07/2016.
//  Copyright © 2016 WebAnt. All rights reserved.
//

class FisrtModulePresenter: FisrtModuleModuleInput, FisrtModuleViewOutput, FisrtModuleInteractorOutput {

    weak var view: FisrtModuleViewInput!
    var interactor: FisrtModuleInteractorInput!
    var router: FisrtModuleRouterInput!

    func viewIsReady() {
        
    }
    
    func sendDataButtonClicled() {
        weak var wself = self
        view.getDataWithResultBlock { (data) in
            let sself = wself
            sself?.router.openSecondModuleWithExampleString(data)
        }
    }
}
