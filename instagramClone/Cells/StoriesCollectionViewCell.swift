import UIKit

class StoriesCollectionViewCell: UICollectionViewCell {
    
    var profilePicture: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "mancity")
        view.clipsToBounds = true
        view.layer.cornerRadius = 40
        return view
    }()
    
    var profileName: UILabel = {
        let view = UILabel()
        view.text = "mancity"
        return view
    }()
    
    override func layoutSubviews() {
        addSubview(profilePicture)
        profilePicture.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(snp.top).offset(10)
            make.height.equalTo(80)
            make.width.equalTo(80)
        }
        
        addSubview(profileName)
        profileName.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(profilePicture.snp.bottom).offset(10)
        }
    }
}
