//
//  DetailView.swift
//  HW-15
//
//  Created by Илья on 11.10.2022.
//

import UIKit

class DetailView: UIViewController {
    
    // MARK: - Elements
    
    var image: UIImageView = {
        let image = UIImageView()
        image.image = UIImage()
        return image
    }()
    
    // MARK: - Lifecycle
    
    init(imageView: UIImageView? = nil) {
        super.init(nibName: nil, bundle: nil)
        self.image = imageView ?? UIImageView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarhy()
        setupLayout()
    }
    
    //MARK: - Setup
    
    private func setupHierarhy() {
        view.addSubview(image)
    }
    
    private func setupLayout() {
        image.snp.makeConstraints { make in
            make.left.top.bottom.right.equalTo(view)
        }
    }
}
