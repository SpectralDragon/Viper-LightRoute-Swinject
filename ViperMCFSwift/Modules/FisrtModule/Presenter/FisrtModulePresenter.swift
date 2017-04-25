//
//  FisrtModuleFisrtModulePresenter.swift
//  ViperMCFSwift
//
//  Created by Vladislav Prusakov on 12/07/2016.
//  Copyright © 2016 WebAnt. All rights reserved.
//

final class FisrtModulePresenter: FisrtModuleViewOutput {
	
	weak var view: FisrtModuleViewInput!
	var interactor: FisrtModuleInteractorInput!
	var router: FisrtModuleRouterInput!
	
	
	func sendDataButtonClicked() {
		view.getDataFromTextField { [weak self] string in
			self?.router.openSecondModule(with: string)
		}
	}
	
	
	func instantiateThirdModule() {
		view.getDataFromTextField { [weak self] string in
			self?.router.instantiateThirdModule(with: string)
		}
	}
	
}

// MARK: -
// MARK: FisrtModuleModuleInput
extension FisrtModulePresenter: FisrtModuleModuleInput {
	
}

// MARK: -
// MARK: FisrtModuleInteractorOutput
extension FisrtModulePresenter: FisrtModuleInteractorOutput {
	
}
