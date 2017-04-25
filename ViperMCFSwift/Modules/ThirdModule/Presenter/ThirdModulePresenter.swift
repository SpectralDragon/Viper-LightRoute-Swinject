//
//  ThirdModuleThirdModulePresenter.swift
//  ViperMCFSwift
//
//  Created by gnatok on 13/07/2016.
//  Copyright © 2016 WebAnt. All rights reserved.
//

final class ThirdModulePresenter: ThirdModuleViewOutput {
	
	weak var view: ThirdModuleViewInput!
	var interactor: ThirdModuleInteractorInput!
	var router: ThirdModuleRouterInput!
	
	var exampleString: String = ""
	
	func viewIsReady() {
		view.setExampleString(data: exampleString)
	}
	
}

// MARK: -
// MARK: ThirdModuleModuleInput
extension ThirdModulePresenter: ThirdModuleModuleInput {

	func configure(with data: String) {
		exampleString = data
	}
	
}

// MARK: -
// MARK: ThirdModuleInteractorOutput
extension ThirdModulePresenter: ThirdModuleInteractorOutput {
	
}
