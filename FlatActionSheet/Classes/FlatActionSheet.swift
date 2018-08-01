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
    public weak var tableView: UITableView!
    
    // MARK: Properties
    public var actions: [FlatActionSheetAction] = []
    
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
        
        tableView.register(FlatActionSheetCell.self,
                           forCellReuseIdentifier: FlatActionSheetCell.reuseIdentifier)
        
        tableView.dataSource = self
        tableView.delegate = self
        
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

// MARK: - Flat Action Sheet Data Source Conformance
extension FlatActionSheet: FlatActionSheetDataSource {
    public func addAction(_ action: FlatActionSheetAction) {
        
        actions.append(action)
    } 
}

// MARK: - Table View Delegate Conformance
extension FlatActionSheet: UITableViewDelegate {
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let action = action(for: indexPath) else {
            
            assert(false, "internal inconsistency  - file a bug")
            return
        }
        
        guard let handler = action.handler else {
            
            assert(false, "internal inconsistency  - file a bug")
            return
        }
        
        handler(action)
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 50
    }
}

// MARK: - Table View Data Source Conformance
extension FlatActionSheet: UITableViewDataSource {
    public func tableView(_ tableView: UITableView,
                          numberOfRowsInSection section: Int) -> Int {
        
        return actions.count
    }
    
    public func tableView(_ tableView: UITableView,
                          cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: FlatActionSheetCell.reuseIdentifier,
                                                       for: indexPath) as? FlatActionSheetCell else {
                                                        
            assert(false, "table view cell registration inconsistency")
            return UITableViewCell()
        }
        
        guard let title = action(for: indexPath)?.title else {
            
            assert(false, "internal inconsistency  - file a bug")
            return UITableViewCell()
        }
        
        cell.update(title)
        
        return cell
    }
}
