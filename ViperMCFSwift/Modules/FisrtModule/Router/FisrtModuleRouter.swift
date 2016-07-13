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
    
    let mainStoryBoard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
    let segueIdentifier = "detailSecondSegue"
    let thirdModuleID = "thirdModuleController"
    
    var transitionHandler: RamblerViperModuleTransitionHandlerProtocol!
    
    var transitionModuleFactory: RamblerViperModuleFactory {
        let factory = RamblerViperModuleFactory(storyboard: mainStoryBoard, andRestorationId: thirdModuleID)
        return factory
    }

    
    func openSecondModuleWithExampleString(data: String) {
        transitionHandler.openModuleUsingSegue!(segueIdentifier).thenChainUsingBlock { moduleInput in
            
            guard let secondModuleInput = moduleInput as? SecondModuleModuleInput else { fatalError("invalid module type") }
            secondModuleInput.configureWithExampleString(data)
            
            return nil
        }
    }
    
    func instantiateThirdModuleWithExampleString(data: String) {
        transitionHandler.openModuleUsingFactory!(transitionModuleFactory) { sourceModuleTransitionHandler, destinationModuleTransitionHandler in
            let sourceVC = sourceModuleTransitionHandler as! UIViewController
            let destinationVC = destinationModuleTransitionHandler as! UIViewController
            sourceVC.navigationController?.pushViewController(destinationVC, animated: true)
            
        }.thenChainUsingBlock { moduleInput in
            guard let thirdModuleInput = moduleInput as? ThirdModuleModuleInput else { fatalError("invalid module type") }
            thirdModuleInput.configureWithExampleString(data)
            
            return nil
        }
    }
}
