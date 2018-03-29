//
//  ApplicationAssembly.swift
//  ViperMCFSwift
//
//  Created by Vladislav Prusakov on 11.11.16.
//  Copyright © 2016 WebAnt. All rights reserved.
//

import Swinject
import SwinjectStoryboard

final class ApplicationAssembly {
	
	//Use default dependency
	class var assembler: Assembler {
        return Assembler([
                FisrtModuleAssemblyContainer(),
                SecondModuleAssemblyContainer(),
                ThirdModuleAssemblyContainer()
            ])
	}
	
	var assembler: Assembler
	
	//If you want use custom Assembler
	init(with assemblies: [Assembly]) {
		assembler = Assembler(assemblies)
	}
	
}

//Inject dependency in Main Storyboard
extension SwinjectStoryboard {

    @objc class func setup() {
        defaultContainer = ApplicationAssembly.assembler.resolver as! Container
    }

}

