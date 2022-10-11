//
//  ViewController.swift
//  HW-15
//
//  Created by Илья on 11.10.2022.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    
    var model: OnboardingModel?
    var models: [Sections] = OnboardingModel.getSections()
    private var View: OnboardingView? {
        guard isViewLoaded else { return nil }
        return view as? OnboardingView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = OnboardingView(viewControl: self)
        model = OnboardingModel()
        title = "Настройки"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}

// MARK: - UITableViewDataSource

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        models.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        models[section].settings.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = models[indexPath.section].settings[indexPath.row]
        
        switch model {
            
        case .labelCell(let model):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: OnboardingTableViewCell.idetifier, for: indexPath) as? OnboardingTableViewCell else {
                return UITableViewCell()
            }
            cell.configure(with: model)
            cell.accessoryType = .disclosureIndicator
            return cell
            
        case .switchCell(let model):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SwitchTableViewCell.idetifier, for: indexPath) as? SwitchTableViewCell else {
                return UITableViewCell()
            }
            cell.configure(with: model)
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 45
    }
}

// MARK: - UITableViewDelegate

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        navigationController?.pushViewController(DetailView(imageView: UIImageView(image: UIImage(named: "bp"))), animated: true)
    }
}

