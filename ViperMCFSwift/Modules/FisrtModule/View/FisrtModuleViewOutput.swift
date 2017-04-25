//
//  FisrtModuleFisrtModuleViewOutput.swift
//  ViperMCFSwift
//
//  Created by Vladislav Prusakov on 12/07/2016.
//  Copyright © 2016 WebAnt. All rights reserved.
//

protocol FisrtModuleViewOutput: class {
	
	///
	/// - author: Vladislav Prusakov
	/// Notify presenter that send data button clicked
	///
	func sendDataButtonClicked()
	
	///
	/// - author: Vladislav Prusakov
	/// Notify presenter that send data button clicked on third module
	///
	func instantiateThirdModule()
}
