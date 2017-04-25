//
//  FisrtModuleFisrtModuleViewController.swift
//  ViperMCFSwift
//
//  Created by Vladislav Prusakov on 12/07/2016.
//  Copyright © 2016 WebAnt. All rights reserved.
//

import UIKit

final class FisrtModuleViewController: UIViewController, FisrtModuleViewInput {
	
	// MARK: -
	// MARK: Properties
	@IBOutlet weak var textField: UITextField!
	
	var output: FisrtModuleViewOutput!
	
	// MARK: -
	// MARK: Life cycle
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	// MARK: -
	// MARK: FisrtModuleViewInput
	func getDataFromTextField(resultBlock: DataResultBlock) {
		resultBlock(textField.text ?? "")
	}
	
	
	// MARK: -
	// MARK: User action
	@IBAction func didClickSendDataButton(_ sender: UIButton) {
		textField.resignFirstResponder()
		output.sendDataButtonClicked()
	}
	
	@IBAction func didClickInstantiateThirdModule(_ sender: AnyObject) {
		textField.resignFirstResponder()
		output.instantiateThirdModule()
	}
	
}
