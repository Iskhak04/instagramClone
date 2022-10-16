//
//  HomeViewController.swift
//  instagramClone
//
//  Created by Iskhak Zhutanov on 16/10/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    var topView: UIView = {
        let view = UIView()
        return view
    }()
    
    var logoButton: UIButton = {
        let view = UIButton()
        view.setTitle("Instagram", for: .normal)
        view.setTitleColor(.label, for: .normal)
        view.titleLabel?.font = UIFont(name: TabBarViewController.Fonts.mainLogoRegular.rawValue, size: 30)
        view.setImage(UIImage(systemName: "chevron.down"), for: .normal)
        view.tintColor = .label
        view.semanticContentAttribute = .forceRightToLeft
        return view
    }()
    
    var directButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "message.and.waveform", withConfiguration: UIImage.SymbolConfiguration(pointSize: 20, weight: .medium, scale: .large)), for: .normal)
        view.tintColor = .label
        return view
    }()
    
    lazy var storiesTableView: UITableView = {
        let view = UITableView()
        view.register(StoriesTableViewCell.self, forCellReuseIdentifier: "StoriesTableViewCell")
        view.dataSource = self
        view.delegate = self
        view.isScrollEnabled = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        layout()
        
    }
    
    func layout() {
        view.addSubview(topView)
        topView.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top).offset(0)
            make.left.equalTo(view.snp.left).offset(0)
            make.right.equalTo(view.snp.right).offset(0)
            make.height.equalTo(120)
        }
        
        topView.addSubview(logoButton)
        logoButton.snp.makeConstraints { make in
            make.top.equalTo(topView.snp.top).offset(65)
            make.left.equalTo(topView.snp.left).offset(15)
        }
        
        topView.addSubview(directButton)
        directButton.snp.makeConstraints { make in
            make.top.equalTo(topView.snp.top).offset(65)
            make.right.equalTo(topView.snp.right).offset(-15)
        }
        
        view.addSubview(storiesTableView)
        storiesTableView.snp.makeConstraints { make in
            make.top.equalTo(topView.snp.bottom).offset(0)
            make.left.equalTo(view.snp.left).offset(0)
            make.right.equalTo(view.snp.right).offset(0)
            make.height.equalTo(130)
        }
    }
}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = storiesTableView.dequeueReusableCell(withIdentifier: "StoriesTableViewCell", for: indexPath) as! StoriesTableViewCell
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
}
