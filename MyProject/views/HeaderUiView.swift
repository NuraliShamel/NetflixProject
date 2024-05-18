import UIKit
import SnapKit

class HeaderUiView: UIView {
    private let downloadButton : UIButton = {
        let button = UIButton()
        button.setTitle("Download", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 5
        return button
    }()

    private let playButton : UIButton = {
        let button = UIButton()
        button.setTitle("Play", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 5
        return button
    }()
    private let duneImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "duneImage")
        return imageView
    }()
    
    private func duneImageMakeGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [ 
        UIColor.clear.cgColor,
        UIColor.systemBackground.cgColor
        ]
        gradientLayer.frame = bounds
        layer.addSublayer(gradientLayer)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(duneImageView)
        duneImageMakeGradient()
        setUpViews()
    }
    
    private func setUpViews() {
        addSubview(downloadButton)
        addSubview(playButton)
        playButton.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(50)
            make.bottom.equalToSuperview().offset(-50)
            make.width.equalTo(120)
        }
        downloadButton.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-50)
            make.bottom.equalToSuperview().offset(-50)
            make.width.equalTo(120)
        }
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        duneImageView.frame = bounds
    }
    
    required init?(coder:NSCoder) {
        fatalError()
    }
}
