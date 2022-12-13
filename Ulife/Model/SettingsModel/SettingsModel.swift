//
//  SettingsModel.swift
//  Ulife
//
//  Created by Henrique Marques on 09/12/22.
//

import Foundation
import UIKit

class SettingsModel {
    
    var model = [Section]()
    
    func createModels() -> [Section] {
        model.append(Section(option: [
            .someInfoCell(model: SettingInfo(title: CellTitle.sectionOneCellTwo.rawValue,
                                             icon: UIImage(systemName: Image.sectionOneCellTwo.rawValue),
                                             iconBackgroungColor: Color.secondColor,
                                             titleInfo: "Teste")
                                             { print("Нажата ячейка \($0)") }),

                .someInfoCell(model: SettingInfo(title: CellTitle.sectionOneCellTwo.rawValue,
                                                 icon: UIImage(systemName: Image.sectionOneCellTwo.rawValue),
                                                 iconBackgroungColor: Color.secondColor,
                                                 titleInfo: "НPoggers")
                                                 { print("Нажата ячейка \($0)") }),
            
            ]))

        return model
    }
}
