import UIKit
import SnapKit

class MyAlbumsHeader: UICollectionReusableView {
    
    static let identifier = "MyAlbumsHeader"
    
    // MARK: - Outlets
    
    lazy var title: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 25, weight: .heavy)
        return label
    }()
    
    private let lineView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray3
        return view
    }()
    
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Erorr in cell")
    }
    
    // MARK: - Setups
    
    private func setupViews() {
        addSubview(title)
        addSubview(lineView)
    }
    
    private func setupConstraints() {
        
        lineView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview().inset(-80)
            make.height.equalTo(0.7)
        }
        
        title.snp.makeConstraints { make in
            make.top.equalTo(lineView.snp.bottom).offset(8)
            make.leading.equalToSuperview()
            make.trailing.lessThanOrEqualToSuperview()
        }
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        title.text = nil
    }
}
