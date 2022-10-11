//
//  OnboardingView.swift
//  HW-15
//
//  Created by Илья on 11.10.2022.
//

import Foundation
import UIKit

class OnboardingView: UIView {
    
    private let cellIdentifier = "cell"
    var viewControler: UIViewController?
    var models: [Sections] = OnboardingModel.getSections()
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.backgroundColor = .black
        tableView.delegate = viewControler as? UITableViewDelegate
        tableView.dataSource = viewControler as? UITableViewDataSource
        tableView.register(OnboardingTableViewCell.self, forCellReuseIdentifier: OnboardingTableViewCell.idetifier)
        tableView.register(SwitchTableViewCell.self, forCellReuseIdentifier: SwitchTableViewCell.idetifier)
        return tableView
    }()
    
    init(viewControl: UIViewController) {
        super.init(frame: .zero)
        self.viewControler = viewControl
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        backgroundColor = .gray
        setupHierarhy()
        setupLayout()
    }
    
    // MARK: - Setup
    
    private func setupHierarhy() {
        addSubview(tableView)
    }
    
    private func setupLayout() {
        tableView.snp.makeConstraints { make in
            make.top.equalTo(snp.top)
            make.left.equalTo(snp.left)
            make.right.equalTo(snp.right)
            make.bottom.equalTo(snp.bottom)
        }
    }
}

