//
//  Onboarding.swift
//  HW-15
//
//  Created by Илья on 11.10.2022.
//

import Foundation
import UIKit

struct Sections {
    let title: String
    let settings: [SettingsCellsType]
}

enum SettingsCellsType {
    case switchCell(model: SettingsSwitchCell)
    case labelCell(model: SettingsCell)
}

struct SettingsSwitchCell {
    let name: String
    let icon: UIImage?
    var isTurnOn: Bool
}

struct SettingsCell {
    let name: String
    let icon: UIImage?
    let rightLabel: String?
}
