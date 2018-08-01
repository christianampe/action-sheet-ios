//
//  FlatActionSheet.swift
//  FlatActionSheet
//
//  Created by Ampe on 7/31/18.
//

import Foundation

@IBDesignable
open class FlatActionSheet: UIView {
    
    // MARK: Views
    weak var tableView: UITableView!
    
    // MARK: Designable Initalizers
    public convenience init() {
        
        self.init(frame: CGRect.zero)
    }
    
    public override convenience init(frame: CGRect) {
        
        self.init(frame)
    }
    
    // MARK: Programmatic Initalizer
    public init(_ frame: CGRect) {
        
        let tableView = UITableView()
        self.tableView = tableView
        
        super.init(frame: frame)
        
        setupView()
        setupTableView()
        
        addViews()
        addConstraints()
    }
    
    // MARK: Storyboard Initalizer
    public required init?(coder aDecoder: NSCoder) {
        
        let tableView = UITableView()
        self.tableView = tableView
        
        super.init(coder: aDecoder)
    
        setupView()
        setupTableView()
        
        addViews()
        addConstraints()
    }
}

// MARK: - Setup Methods
private extension FlatActionSheet {
    func setupView() {
        layer.backgroundColor = UIColor.black.withAlphaComponent(0.2).cgColor
    }
    
    func setupTableView() {
        
//        tableView.register(FlatDropdownCell.self,
//                           forCellReuseIdentifier: FlatDropdownCell.reuseIdentifier)
//
//        tableView.dataSource = self
//        tableView.delegate = self
        
        tableView.isScrollEnabled = false
    }
    
    func addViews() {
        
        addSubview(tableView)
    }
    
    func addConstraints() {
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        tableView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        tableView.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
    }
}
