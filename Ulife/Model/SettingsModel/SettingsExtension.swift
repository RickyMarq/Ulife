//
//  SettingsExtension.swift
//  Ulife
//
//  Created by Henrique Marques on 09/12/22.
//

import Foundation
import UIKit

extension SettingsModel {
    
    
    enum CellTitle: String {
        case sectionOneCellOne = "Pogger"
        case sectionOneCellTwo = "De"
        case sectionOneCellThree  = "OURO"
    }
    
    enum Image: String {
        case sectionOneCellOne = "airplane"
        case sectionOneCellTwo = "wifi"
        case sectionOneCellThree = "bluetooth"
    }
    
    enum Color {
        static var firstColor = UIColor.systemOrange
        static var secondColor = UIColor.systemBlue
        static var thirdColor = UIColor.systemGreen
        static var fourColor = UIColor.link
        static var fiveColor = UIColor.systemPink
        static var sixColor = UIColor.systemGray
        static var sevenColor = UIColor.blue
    }
    
    
}
