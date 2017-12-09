//
//  FisrtModuleFisrtModuleRouter.swift
//  ViperMCFSwift
//
//  Created by Vladislav Prusakov on 12/07/2016.
//  Copyright © 2016 WebAnt. All rights reserved.
//

import LightRoute

final class FisrtModuleRouter: FisrtModuleRouterInput {
	
	// MARK: -
	// MARK: Properties
	
	// MARK: Private
	private let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
	private let segueIdentifier = "detailSecondSegue"
	private let thirdModuleID = "thirdModuleController"
	
	private lazy var transitionModuleFactory: StoryboardFactoryProtocol = {
		let factory = StoryboardFactory(storyboard: self.mainStoryboard, restorationId: self.thirdModuleID)
		return factory
	}()
	
	// MARK: Public
	weak var transitionHandler: TransitionHandler!
	
	// MARK: -
	// MARK: FisrtModuleRouterInput
	
	// Open module use Segue
	func openSecondModule(with data: String) {
		transitionHandler.forSegue(identifier: segueIdentifier, to: SecondModuleModuleInput.self).then { moduleInput in
			moduleInput.configure(with: data)
		}
	}
	
	// Open module use fabric
	func instantiateThirdModule(with data: String) {
		try! transitionHandler
			.forStoryboard(factory: self.transitionModuleFactory, to: ThirdModuleModuleInput.self)
			.then { moduleInput in
				moduleInput.configure(with: data)
		}
	}
}
