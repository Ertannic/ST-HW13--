import UIKit
import SnapKit

class MyAlbums: UICollectionViewCell {
    
    static let identifier = "myAlbums"
    
    // MARK: - Oulets
    
    lazy var image: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.layer.cornerRadius = 10
        image.layer.rasterizationScale = UIScreen.main.scale
        
        return image
    }()
    
    lazy var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.textAlignment = .left
        titleLabel.numberOfLines = 100
        titleLabel.font = UIFont.systemFont(ofSize: 17.0, weight: .heavy)
        return titleLabel
    }()
    
    lazy var numberLabel: UILabel = {
        let numberLabel = UILabel()
        return numberLabel
    }()
    
    private let mainStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.distribution = .fill
        stack.spacing = -30
        return stack
    }()
    
    private let bottomStacK: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .leading
        stack.distribution = .fill
        return stack
    }()
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("ERORR")
    }
    
    
    // MARK: - Setups
    
    private func setupViews() {
        addSubview(mainStack)
        mainStack.addArrangedSubview(image)
        mainStack.addArrangedSubview(bottomStacK)
        bottomStacK.addArrangedSubview(titleLabel)
        bottomStacK.addArrangedSubview(numberLabel)
    }
    
    private func setupConstraints() {
        mainStack.snp.makeConstraints { make in
            
            make.edges.equalToSuperview()
            
        }
        
        titleLabel.snp.makeConstraints { make in
            
            make.left.equalToSuperview()
            make.height.equalTo(100)
            make.width.equalTo(110)
        }
    }
}
