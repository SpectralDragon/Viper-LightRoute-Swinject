//
//  ThirdModuleThirdModulePresenter.swift
//  ViperMCFSwift
//
//  Created by gnatok on 13/07/2016.
//  Copyright © 2016 WebAnt. All rights reserved.
//

import Foundation

class ThirdModulePresenter: NSObject, ThirdModuleModuleInput, ThirdModuleViewOutput, ThirdModuleInteractorOutput {
	
	weak var view: ThirdModuleViewInput!
	var interactor: ThirdModuleInteractorInput!
	var router: ThirdModuleRouterInput!
	
	var exampleString: String?
	
	func viewIsReady() {
		view.setExampleString(data: exampleString!)
	}
	
	func configureWith(exampleString data: String) {
		exampleString = data
	}
}
