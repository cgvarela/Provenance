//
//  SystemOverviewViewModel.swift
//  Provenance
//
//  Created by Joseph Mattiello on 11/12/18.
//  Copyright © 2018 Provenance Emu. All rights reserved.
//

import Foundation

struct SystemOverviewViewModel {
    let title : String
    let identifier : String
    let gameCount : Int
    let cores : [Core]
    let preferredCore : Core?
    let bioses : [BIOSInfoProvider]?
}

extension SystemOverviewViewModel {
    init<S:SystemProtocol>(withSystem system : S) {
        title = system.name
        identifier = system.identifier
        gameCount = system.gameStructs.count
        cores = system.coreStructs
        bioses = system.BIOSes
        preferredCore = system.userPreferredCore
    }
}
