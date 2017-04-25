//
//  FisrtModuleFisrtModuleViewInput.swift
//  ViperMCFSwift
//
//  Created by Vladislav Prusakov on 12/07/2016.
//  Copyright © 2016 WebAnt. All rights reserved.
//

typealias DataResultBlock = (_ data: String) -> Void

protocol FisrtModuleViewInput: class {
	
	///
	/// - author: Vladislav Prusakov
	/// Get data from UITextField.
	///
	func getDataFromTextField(resultBlock: DataResultBlock)
}
