import UIKit
import SnapKit

class HumansAndLocationHeader: UICollectionReusableView {
    
    static let identifier = "HumanAndLocationHeader"
    
    //MARK: - Outlets
    
    lazy var label: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 25, weight: .heavy)
        return label
    }()
    
    lazy var lineView: UIView = {
        let lineView = UIView()
        lineView.backgroundColor = .systemGray4
        return lineView
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
        addSubview(label)
        addSubview(lineView)
    }
    
    private func setupConstraints() {
        
        lineView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview().inset(-80)
            make.height.equalTo(0.7)
        }
        
        label.snp.makeConstraints { make in
            make.top.equalTo(lineView.snp.bottom).offset(8)
            make.leading.equalToSuperview()
            make.trailing.lessThanOrEqualToSuperview()
        }
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        label.text = nil
    }
}
