//
//  SettingsSection.swift
//  Ulife
//
//  Created by Henrique Marques on 09/12/22.
//

import Foundation
import UIKit

struct Section {
    let option: [SettingsOptionType]
}

enum SettingsOptionType {
    case staticCell(model: SettingsOption)
    case someInfoCell(model: SettingInfo)

}

struct SettingsOption {
    let title: String
    let icon: UIImage?
    let iconBackgroungColor: UIColor
    let handler: ((_ doubleHeader: String) -> Void)
}

struct SettingInfo {
    let title: String
    let icon: UIImage?
    let iconBackgroungColor: UIColor
    var titleInfo: String
    let handler: ((_ doubleHeader: String) -> Void)
}
