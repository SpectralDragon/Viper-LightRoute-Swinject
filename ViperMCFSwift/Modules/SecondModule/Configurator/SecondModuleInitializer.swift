//
//  SecondModuleSecondModuleInitializer.swift
//  ViperMCFSwift
//
//  Created by SpectralDragon on 12/07/2016.
//  Copyright © 2016 WebAnt. All rights reserved.
//

import UIKit

class SecondModuleModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var secondmoduleViewController: SecondModuleViewController!

    override func awakeFromNib() {

        let configurator = SecondModuleModuleConfigurator()
        configurator.configureModuleForViewInput(secondmoduleViewController)
    }

}
