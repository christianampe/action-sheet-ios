//
//  FlatActionSheeDataSource.swift
//  FlatActionSheet
//
//  Created by Ampe on 8/1/18.
//

import Foundation

public protocol FlatActionSheetDataSource {
    var tableView: UITableView! { get set }
    
    var actions: [FlatActionSheetAction] { get }
    
    func addAction(_ action: FlatActionSheetAction)
}
