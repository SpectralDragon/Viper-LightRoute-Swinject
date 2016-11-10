//
//  SecondModuleSecondModuleViewOutput.swift
//  ViperMCFSwift
//
//  Created by SpectralDragon on 12/07/2016.
//  Copyright © 2016 WebAnt. All rights reserved.
//


import Foundation

///If you use ViperMcFlurry, you should be used @objc annotation because VMcF use ObjectiveC Runtime.
@objc protocol SecondModuleViewOutput {
	
	/**
		@author SpectralDragon
		Notify presenter that view is ready
	*/
	
	func viewIsReady()
}
