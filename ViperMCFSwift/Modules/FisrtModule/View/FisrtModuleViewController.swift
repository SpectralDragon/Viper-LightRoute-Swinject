//
//  FisrtModuleFisrtModuleViewController.swift
//  ViperMCFSwift
//
//  Created by SpectralDragon on 12/07/2016.
//  Copyright © 2016 WebAnt. All rights reserved.
//

import UIKit

class FisrtModuleViewController: UIViewController, FisrtModuleViewInput {

    @IBOutlet weak var textField: UITextField!
    
    var output: FisrtModuleViewOutput!
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }


    // MARK: FisrtModuleViewInput
    func getDataWithResultBlock(resultBlock: DataResultBlock) {
        resultBlock(data: textField.text!)
    }
    
    @IBAction func didClickSendDataButton(sender: UIButton) {
        textField.resignFirstResponder()
        output.sendDataButtonClicled()
    }
    
    @IBAction func didClickInstantiateSecondModule(sender: AnyObject) {
        textField.resignFirstResponder()
        output.instantiateSecondModule()
    }
}
