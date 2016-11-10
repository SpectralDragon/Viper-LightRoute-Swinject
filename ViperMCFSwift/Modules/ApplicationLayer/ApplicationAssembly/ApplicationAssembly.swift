//
//  ApplicationAssembly.swift
//  ViperMCFSwift
//
//  Created by Владислав on 11.11.16.
//  Copyright © 2016 WebAnt. All rights reserved.
//

import Foundation
import Swinject
import SwinjectStoryboard

class ApplicationAssembly {
	
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
	init(with assemblies: [AssemblyType]) {
		assembler = try! Assembler(assemblies: assemblies)
	}
	
}

//Inject dependency in Main Storyboard
extension SwinjectStoryboard {
	
	public static func setup() {
		defaultContainer = ApplicationAssembly.assembler.resolver as! Container
	}
	
}
