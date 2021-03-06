//
//  DefaultsManager.swift
//  MintClock
//
//  Created by mg on 2/11/21.
//

import Foundation

class DefaultsManager {

    public static let shared = DefaultsManager()

    private enum DefaultsKeys: String {
        case gasType, etherscanAPIKey, showGweiText, alertSet, alertValue
    }

    // one of: ProposedGasPrice, FastGasPrice, SafeGasPrice
    public var gasType: String? {
        get { return UserDefaults.standard.string(forKey: DefaultsKeys.gasType.rawValue) }
        set { UserDefaults.standard.set(newValue, forKey: DefaultsKeys.gasType.rawValue) }
    }
    
    public var etherscanAPIKey: String? {
        get { return UserDefaults.standard.string(forKey: DefaultsKeys.etherscanAPIKey.rawValue) }
        set { UserDefaults.standard.set(newValue, forKey: DefaultsKeys.etherscanAPIKey.rawValue) }
    }
    
    public var showGweiText: Bool? {
        get { return UserDefaults.standard.bool(forKey: DefaultsKeys.showGweiText.rawValue) }
        set { UserDefaults.standard.set(newValue, forKey: DefaultsKeys.showGweiText.rawValue) }
    }

    public var alertSet: Bool? {
        get { return UserDefaults.standard.bool(forKey: DefaultsKeys.alertSet.rawValue) }
        set { UserDefaults.standard.set(newValue, forKey: DefaultsKeys.alertSet.rawValue) }
    }

    public var alertValue: String? {
        get { return UserDefaults.standard.string(forKey: DefaultsKeys.alertValue.rawValue) }
        set { UserDefaults.standard.set(newValue, forKey: DefaultsKeys.alertValue.rawValue) }
    }
}
