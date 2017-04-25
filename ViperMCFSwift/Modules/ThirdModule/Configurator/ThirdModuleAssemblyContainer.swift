//
//  ThirdModuleThirdModuleConfigurator.swift
//  ViperMCFSwift
//
//  Created by gnatok on 13/07/2016.
//  Copyright © 2016 WebAnt. All rights reserved.
//

import Swinject
import SwinjectStoryboard

final class ThirdModuleAssemblyContainer: Assembly {
	
	func assemble(container: Container) {
		container.register(ThirdModuleInteractor.self) { (r, presenter: ThirdModulePresenter) in
			let interactor = ThirdModuleInteractor()
			interactor.output = presenter
			
			return interactor
		}
		
		container.register(ThirdModuleRouter.self) { (r, viewController: ThirdModuleViewController) in
			ThirdModuleRouter()
		}
		
		container.register(ThirdModulePresenter.self) { (r, viewController: ThirdModuleViewController) in
			let presenter = ThirdModulePresenter()
			presenter.view = viewController
			presenter.interactor = r.resolve(ThirdModuleInteractor.self, argument: presenter)
			presenter.router = r.resolve(ThirdModuleRouter.self, argument: viewController)
			
			return presenter
		}
		
		container.storyboardInitCompleted(ThirdModuleViewController.self) { r, viewController in
			viewController.output = r.resolve(ThirdModulePresenter.self, argument: viewController)
		}
	}
	
}
