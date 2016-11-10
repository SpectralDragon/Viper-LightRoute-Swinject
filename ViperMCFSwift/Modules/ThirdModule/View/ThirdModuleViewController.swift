//
//  ThirdModuleThirdModuleViewController.swift
//  ViperMCFSwift
//
//  Created by gnatok on 13/07/2016.
//  Copyright © 2016 WebAnt. All rights reserved.
//

import UIKit

class ThirdModuleViewController: UIViewController, ThirdModuleViewInput {
	
	@IBOutlet weak var exampleStringLabel: UILabel!
	
	var output: ThirdModuleViewOutput!
	
	// MARK: Life cycle
	override func viewDidLoad() {
		super.viewDidLoad()
		output.viewIsReady()
	}
	
	// MARK: SecondModuleViewInput
	func setExampleString(data: String) {
		exampleStringLabel.text = data
	}
}
