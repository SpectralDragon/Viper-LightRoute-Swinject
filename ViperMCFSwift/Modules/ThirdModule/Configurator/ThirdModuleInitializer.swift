//
//  ThirdModuleThirdModuleInitializer.swift
//  ViperMCFSwift
//
//  Created by gnatok on 13/07/2016.
//  Copyright © 2016 WebAnt. All rights reserved.
//

import UIKit

class ThirdModuleModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var thirdmoduleViewController: ThirdModuleViewController!

    override func awakeFromNib() {

        let configurator = ThirdModuleModuleConfigurator()
        configurator.configureModuleForViewInput(thirdmoduleViewController)
    }
}
