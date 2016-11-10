//
//  SecondModuleSecondModuleConfigurator.swift
//  ViperMCFSwift
//
//  Created by SpectralDragon on 12/07/2016.
//  Copyright © 2016 WebAnt. All rights reserved.
//

import UIKit
import Swinject
import SwinjectStoryboard

class SecondModuleAssemblyContainer: AssemblyType {
	
	func assemble(container: Container) {
		container.register(SecondModuleInteractor.self) { (r, presenter: SecondModulePresenter) in
			let interactor = SecondModuleInteractor()
			interactor.output = presenter
			
			return interactor
		}
		
		container.register(SecondModuleRouter.self) { (r, viewController: SecondModuleViewController) in
			SecondModuleRouter()
		}
		
		container.register(SecondModulePresenter.self) { (r, viewController: SecondModuleViewController) in
			let presenter = SecondModulePresenter()
			presenter.view = viewController
			presenter.interactor = r.resolve(SecondModuleInteractor.self, argument: presenter)
			presenter.router = r.resolve(SecondModuleRouter.self, argument: viewController)
			
			return presenter
		}
		
		container.registerForStoryboard(SecondModuleViewController.self) { r, viewController in
			viewController.output = r.resolve(SecondModulePresenter.self, argument: viewController)
		}
	}
	
}
