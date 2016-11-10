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
		view.getDataWithResultBlock { [weak self] string in
			self?.router.openSecondModuleWith(exampleString: string)
		}
	}
	
	
	func instantiateThirdModule() {
		view.getDataWithResultBlock { [weak self] string in
			self?.router.instantiateThirdModuleWith(exampleString: string)
		}
	}
	
}
