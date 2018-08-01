//
//  FlatActionSheetAction.swift
//  FlatActionSheet
//
//  Created by Ampe on 8/1/18.
//

import Foundation

open class FlatActionSheetAction {
    public let title: String?
    public let style: FlatActionSheetActionStyle
    public let handler: ((FlatActionSheetAction) -> Swift.Void)?
    
    public init(title: String? = nil,
              style: FlatActionSheetActionStyle,
              handler: ((FlatActionSheetAction) -> Swift.Void)? = nil) {
        
        self.title = title
        self.style = style
        self.handler = handler
    }
}
