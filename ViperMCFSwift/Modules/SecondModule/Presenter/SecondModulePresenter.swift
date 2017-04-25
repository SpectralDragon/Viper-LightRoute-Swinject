//
//  SecondModuleSecondModulePresenter.swift
//  ViperMCFSwift
//
//  Created by Vladislav Prusakov on 12/07/2016.
//  Copyright © 2016 WebAnt. All rights reserved.
//

final class SecondModulePresenter: SecondModuleViewOutput {
	
	weak var view: SecondModuleViewInput!
	var interactor: SecondModuleInteractorInput!
	var router: SecondModuleRouterInput!
	
	var exampleString: String = ""
	
	func viewIsReady() {
		view.setExampleString(data: exampleString)
	}

}

// MARK: - 
// MARK: SecondModuleModuleInput
extension SecondModulePresenter: SecondModuleModuleInput {

	func configure(with data: String) {
		exampleString = data
	}
	
}

// MARK: -
// MARK: SecondModuleInteractorOutput
extension SecondModulePresenter: SecondModuleInteractorOutput {
	
}
