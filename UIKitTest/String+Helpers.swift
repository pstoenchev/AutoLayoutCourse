//
//  String+Helpers.swift
//  UIKitTest
//
//  Created by Stoyan Stoyanov on 25/09/2020.
//  Copyright © 2020 Stoyan Stoyanov. All rights reserved.
//

import Foundation


// MARK: - Helpers

extension String {
    
    /// Gives back localized version of this string.
    var localized: String { NSLocalizedString(self, comment: "") }
}
