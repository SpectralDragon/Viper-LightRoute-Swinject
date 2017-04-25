//
//  FisrtModuleFisrtModuleConfigurator.swift
//  ViperMCFSwift
//
//  Created by Vladislav Prusakov on 12/07/2016.
//  Copyright © 2016 WebAnt. All rights reserved.
//

import Swinject
import SwinjectStoryboard

final class FisrtModuleAssemblyContainer: Assembly {
	
	//Module assembly
	func assemble(container: Container) {
		container.register(FisrtModuleInteractor.self) { (r, presenter: FisrtModulePresenter) in
			let interactor = FisrtModuleInteractor()
			interactor.output = presenter
			
			return interactor
		}
		
		container.register(FisrtModuleRouter.self) { (r, viewController: FisrtModuleViewController) in
			let router = FisrtModuleRouter()
			router.transitionHandler = viewController
			
			return router
		}
		
		container.register(FisrtModulePresenter.self) { (r, viewController: FisrtModuleViewController) in
			let presenter = FisrtModulePresenter()
			presenter.view = viewController
			presenter.interactor = r.resolve(FisrtModuleInteractor.self, argument: presenter)
			presenter.router = r.resolve(FisrtModuleRouter.self, argument: viewController)
			
			return presenter
		}
		
		container.storyboardInitCompleted(FisrtModuleViewController.self) { r, viewController in
			viewController.output = r.resolve(FisrtModulePresenter.self, argument: viewController)
		}
	}
	
}
