//
//  FisrtModuleFisrtModuleRouter.swift
//  ViperMCFSwift
//
//  Created by SpectralDragon on 12/07/2016.
//  Copyright © 2016 WebAnt. All rights reserved.
//

import ViperMcFlurry
import Foundation

class FisrtModuleRouter: NSObject, FisrtModuleRouterInput {
	
	fileprivate let mainStoryBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
	fileprivate let segueIdentifier = "detailSecondSegue"
	fileprivate let thirdModuleID = "thirdModuleController"
	
	var transitionHandler: RamblerViperModuleTransitionHandlerProtocol!
	
	var transitionModuleFactory: RamblerViperModuleFactory {
		let factory = RamblerViperModuleFactory(storyboard: mainStoryBoard, andRestorationId: thirdModuleID)
		return factory!
	}
	
	//Open module use Segue
	func openSecondModuleWith(exampleString data: String) {
		transitionHandler.openModule!(usingSegue: segueIdentifier).thenChain { moduleInput in
			
			guard let secondModuleInput = moduleInput as? SecondModuleModuleInput else { fatalError("invalid module type") }
			secondModuleInput.configureWith(exampleString: data)
			
			return nil
		}
	}
	
	//Open module use fabric
	func instantiateThirdModuleWith(exampleString data: String) {
		transitionHandler.openModule!(usingFactory: transitionModuleFactory) { sourceModuleTransitionHandler, destinationModuleTransitionHandler in
			let sourceVC = sourceModuleTransitionHandler as! UIViewController
			let destinationVC = destinationModuleTransitionHandler as! UIViewController
			sourceVC.navigationController?.pushViewController(destinationVC, animated: true)
			
			}.thenChain { moduleInput in
				guard let thirdModuleInput = moduleInput as? ThirdModuleModuleInput else { fatalError("invalid module type") }
				thirdModuleInput.configureWith(exampleString: data)
				
				return nil
		}
	}
}
