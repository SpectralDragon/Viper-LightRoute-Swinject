//
//  FisrtModuleFisrtModuleInitializer.swift
//  ViperMCFSwift
//
//  Created by SpectralDragon on 12/07/2016.
//  Copyright © 2016 WebAnt. All rights reserved.
//

import UIKit

class FisrtModuleModuleInitializer: NSObject {


    //Connect with object on storyboard
    @IBOutlet weak var fisrtmoduleViewController: FisrtModuleViewController!

    override func awakeFromNib() {

        let configurator = FisrtModuleModuleConfigurator()
        configurator.configureModuleForViewInput(fisrtmoduleViewController)
    }

}
