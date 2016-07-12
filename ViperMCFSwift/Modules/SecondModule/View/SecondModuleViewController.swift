//
//  SecondModuleSecondModuleViewController.swift
//  ViperMCFSwift
//
//  Created by SpectralDragon on 12/07/2016.
//  Copyright © 2016 WebAnt. All rights reserved.
//

import UIKit

class SecondModuleViewController: UIViewController, SecondModuleViewInput {

    @IBOutlet weak var exampleStringLabel: UILabel!
    
    var output: SecondModuleViewOutput!

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
