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
		return try! Assembler(assemblies: [
																				FisrtModuleAssemblyContainer(),
																				SecondModuleAssemblyContainer(),
																				ThirdModuleAssemblyContainer()
																			])
	}
	
	var assembler: Assembler
	
	//If you want use custom Assembler
	init(with assemblies: [Assembly]) {
		assembler = try! Assembler(assemblies: assemblies)
	}
	
}

//Inject dependency in Main Storyboard
extension SwinjectStoryboard {
	
	public static func setup() {
		defaultContainer = ApplicationAssembly.assembler.resolver as! Container
	}
	
}
