import UIKit

class StoriesTableViewCell: UITableViewCell {
    
    lazy var storiesCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        layout.scrollDirection = .horizontal
        view.showsHorizontalScrollIndicator = false
        view.register(StoriesCollectionViewCell.self, forCellWithReuseIdentifier: "StoriesCollectionViewCell")
        view.dataSource = self
        view.delegate = self
        return view
    }()
    
    override func layoutSubviews() {
        addSubview(storiesCollectionView)
        storiesCollectionView.snp.makeConstraints { make in
            make.top.equalTo(snp.top).offset(0)
            make.left.equalTo(snp.left).offset(0)
            make.right.equalTo(snp.right).offset(0)
            make.bottom.equalTo(snp.bottom).offset(0)
        }
    }
}

extension StoriesTableViewCell: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = storiesCollectionView.dequeueReusableCell(withReuseIdentifier: "StoriesCollectionViewCell", for: indexPath) as! StoriesCollectionViewCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 130)
    }
    
}
