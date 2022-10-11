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

