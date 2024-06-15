//
//  WeaponInfoMain+URL.swift
//  Thunder
//
//  Created by tkgstrator on 2024/05/05.
//  Copyright @ 2024 Magi, Corporation. All rights reserved.
//
//  Generated automatically by SplatNet3Gen, do not edit.
//

import Foundation

extension WeaponInfoMain.Key: URLConvertible {
    public var path: String {
        "resources/prod/v2/weapon_illust/"
    }
}

extension WeaponInfoMain.Id: URLConvertible {
    public var path: String {
        switch self {
        case .RandomGold, .RandomGreen:
            return "resources/prod/v2/ui_img/"
        default:
            return "resources/prod/v2/weapon_illust/"
        }
    }
    
    public var assetURL: URL? {
        guard let index: Int = WeaponInfoMain.Id.allCases.firstIndex(of: self) else {
            return nil
        }
        return WeaponInfoMain.Key.allCases[index].assetURL
    }
}
